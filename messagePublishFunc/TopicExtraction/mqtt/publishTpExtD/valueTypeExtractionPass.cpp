// Type is extracted in typeExtractionPass.cpp, so, I am trying to get the value pointer the shared pointer is pointing to with this pass.

#include <unordered_set>
#include <unordered_map>
#include <sstream>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Attributes.h"
#include "llvm/Support/Debug.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Support/Timer.h"

#define NDEBUG

using namespace llvm;
 
namespace {

  class CPSTracker : public ModulePass {

    public:

      static char ID;
      CPSTracker() : ModulePass(ID) { }

      bool runOnModule(Module &M) override;

  };

}

char CPSTracker::ID = 0;

bool CPSTracker::runOnModule(Module &M) {
	
	LLVMContext &context = M.getContext();
        // Defining the printf function
	Type *intType = Type::getInt32Ty(context);
        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
        auto printfFunc = M.getOrInsertFunction("printf", printfType);

	for (auto &F:M){
		std::vector<std::string> arg_strings;
		std::vector<Value*> arg_values; // used to store functions argument values
		std::string s;
                raw_string_ostream rso(s);
		rso << F.getName() << " ";
		arg_strings.push_back(rso.str());
		// Marking how many values a function has 
		for(auto i = F.arg_begin();i!=F.arg_end();++i){
			rso << *i <<"\n";
			arg_strings.push_back(rso.str());
			arg_values.push_back(i);
		}
	
		// Added HBW functions	
		//if(F.getName().contains("subtract")){
		//delivery_complete contains the token
		//if(F.getName().contains("message_arrived") || F.getName().contains("publish") || F.getName().contains("connection_lost") || F.getName().contains("delivery_complete")){
		if(F.getName().contains("message_arrived")){
			//This for loop will get the user function i.e., suppose I got a function "message_arrived", then following iterator will tell me the function calling this function.		
			
			if(F.getName().contains("printf"))
				break;	

			for(auto ui=F.use_begin();ui!=F.use_end();ui++){
				if(auto I = dyn_cast<Instruction>(ui->getUser())){
					auto *BB = I->getParent();
					Function* userFunction = BB->getParent();
					BasicBlock::iterator IP = BB->getFirstInsertionPt();
					IRBuilder<> builder(&(*IP));
					std::vector<std::string> user;
					std::string format("\n\nUser: ");
					std::string s;
					raw_string_ostream rso(s);
					rso << userFunction->getName()<<" is calling "<<F.getName()<<"\n";
					rso << F.getName() << " is called from this callInst"<<*ui->getUser()<<"\n";
					if(F.getName().contains("Notify") || F.getName().contains("Update"))
						errs()<<"Caller of Notify and update is instrumented\n";
					user.push_back(rso.str());

					for (size_t i = 0; i < user.size(); ++i) {
						format += " %s\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
		
					for (auto &s : user) {
						argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
					}
					builder.CreateCall(printfFunc, argsV, "calltmp");				
				}
			}
			// If a function is declared then it will not have basic blocks in them. So, if a function is not delcared then it will have basic block, which I need to insert printf
			if(!F.isDeclaration()){
				auto &BB = F.getEntryBlock();        
				std::vector<std::string> arguments; // This vector will be used to store functions arguments name
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
				IRBuilder<> builder(&(*IP));
				
				// Injecting World clock
                       		std::time_t now = std::time(0);
                       		char* dt = ctime(&now);
                       		//errs()<<"dt: "<<dt<<"Unix time: "<<now<<"\n";
			
				// date and time
				Value *str = builder.CreateGlobalStringPtr(dt, "str");
                        	std::vector<Value *> worldClock({str});
                        	builder.CreateCall(printfFunc, worldClock, "calltmp");
				
				// Unix time
				//raw_string_ostream rsoT("Time: ");
				std::stringstream ss;
				ss <<"Unix time: "<< now;
				std::string ts = ss.str();
				Value *unixT = builder.CreateGlobalStringPtr(ts, "str");
                                std::vector<Value *> unixTime({unixT});
                                builder.CreateCall(printfFunc, unixTime, "calltmp");

				//Process start time is printed here
                        	auto start = TimeRecord::getCurrentTime(false).getProcessTime();
                        	//errs()<<"Process start time:"<< llvm::format("%0.1f", start) << "ms\n";

				{
					// Getting the arguments for this function
					std::string format("\narguments: ");
					std::string s;
        			        raw_string_ostream rso(s);
					rso << F.getName() << " ";
					arguments.push_back(rso.str());
					// Pushing the argument names in the arguments vector
					for(auto i = F.arg_begin();i!=F.arg_end();++i){
						rso << *i;
						arguments.push_back(rso.str());
					}
					// Add string format specifier for each argument we will later print
					for (size_t i = 0; i < arguments.size(); ++i) {
						format += " %s\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
					// pushing values into argsV after creating a string pointer to arguments
					for (auto &s : arguments) {
						argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
					}
					// Calling the printf funcion
					builder.CreateCall(printfFunc, argsV, "calltmp");				
				}
				// Till now arguments
				// Now, starting to record values		
				{
					// using the format specifier for printing the values
					std::string format("arg_values: ");
					for (size_t i = 0; i < arg_values.size(); ++i) {
						format += "%s\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
					// If I simply push the values then it works fine but I have to get values for arm-32 bit.
					// That's why I am bitcasting the values to a 32-bit result and then pushing it. But only this part is causing the error. 
					
					// Worked with 32 bit int and then all values except pointer and array worked
					
					outs()<<"\nFunction name:"<<F.getName()<<"\n";
					// get_topic function
					llvm::Function* getTopicFunc = F.getParent()->getFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev");
					
					llvm::Function* toStringFn = F.getParent()->getFunction("_ZNK4mqtt7message9to_stringB5cxx11Ev");
					//outs()<<"get_topic Function: "<<*toStringFn<<"\n";
					llvm::FunctionType* toStringFnType = llvm::FunctionType::get(llvm::Type::getInt8PtrTy(context), { llvm::Type::getInt8PtrTy(context) }, false);
                                        llvm::FunctionCallee toStringFunc = M.getOrInsertFunction("_ZNK4mqtt7message9to_stringB5cxx11Ev", toStringFnType);
					
					llvm::FunctionType* getTopicFnType = llvm::FunctionType::get(llvm::Type::getInt8PtrTy(context), { llvm::Type::getInt8PtrTy(context) }, false);
					llvm::FunctionCallee getTopicFn = M.getOrInsertFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev", getTopicFnType);
					//for (auto &v : arg_values) {
                                        //	if(v->getType()->isPointerTy()){
                                        //                //llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
                                        //                //argsV.push_back(loadedValue);
					//		auto containedType = v->getType()->getContainedType(0);
                                        //                outs()<<"Name: "<<v->getName()<<"\n";
                                        //                if (v->getName() == "msg") {
					//			outs()<<"Contained Type: "<< *containedType <<"\n";
					//			if (containedType->getStructName().startswith("class.std::shared_ptr")) {
                                        //                	        //argsV.push_back(builder.CreatePointerCast(builder.CreateCall(toStringFunc, v), llvm::Type::getInt8PtrTy(context)));
                                        //                	        argsV.push_back(builder.CreateGlobalStringPtr("This is msg part 1", ""));
                                        //                	}
                                        //                	else{
                                        //                	        //argsV.push_back(builder.CreatePointerCast(builder.CreateCall(toStringFunc, v), llvm::Type::getInt8PtrTy(context)));
					//				std::string typeName;
					//				raw_string_ostream rso(typeName);
					//				v->print(rso);
					//				rso.flush();
					//				outs()<<"Type: "<<typeName <<"\n";
                                        //                	        argsV.push_back(builder.CreateGlobalStringPtr(typeName, ""));
                                        //                	}
                                        //                }
					//		continue;
					//	}
					//	argsV.push_back(v);
					//}

					// Extracted type of 1st pointer in here
					for (auto &v : arg_values) {
						if(v->getType()->isPointerTy()){
							//llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
							//argsV.push_back(loadedValue);
							outs()<<"Name: "<<v->getName()<<"\n";	
							//if (v->getName() == "msg") {
							//	argsV.push_back(builder.CreatePointerCast(builder.CreateCall(mod->getFunction("_ZN4mqtt13const_message10get_topicEv"), msg), llvm::Type::getInt8PtrTy(context)));
							//}
							outs()<<"Pointer type:"<< *v->getType() <<"\n";
							auto containedType = v->getType()->getContainedType(0);
							outs()<<"Contained type(0): "<<*v->getType()->getContainedType(0)<<"\n";
							// If Contained type returns shared pointer then the contained contained type is a structure
							outs()<<"Contained contained type: "<<containedType->getContainedType(0)->isStructTy()<<"\n";
							outs()<<"Struct name: "<<containedType->getStructName()<<"\n";
							if (containedType->getStructName().startswith("class.std::shared_ptr")) {
								//argsV.push_back(builder.CreateGlobalStringPtr("This is msg part 1", ""));
								outs() << "Shared pointer type: " << *v->getType() << "\n";
								outs()<<"Struct name: "<<containedType->getContainedType(0)->getStructName()<<"\n";
								// trying to print the pointer shared pointer is pointing to 
								assert(containedType->getContainedType(0));
								// Now getting the contained types and it's shared pointers like following,
								// Contained Pointer Type:%"class.std::__shared_ptr.113" = type { %"class.mqtt::delivery_token"*, %"class.std::__shared_count" }
								Type *containedPointerType = containedType->getContainedType(0);
								outs()<< "Contained Pointer Type:" << *containedPointerType <<"\n";
								assert(containedType->isStructTy());
								outs()<<"First type: "<< *containedPointerType->getContainedType(0)<<"\n";
								// So, the 1st type of 1st pointer is extracted, looks like -  %"class.mqtt::delivery_token"*
								Type *firstType = containedPointerType->getContainedType(0);
								assert(firstType->isPointerTy());

								//llvm::Function* getTopicF = F.getParent()->getFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev");
								//assert(getTopicF);
								//Value *topicStrPtr = builder.CreateCall(getTopicF, v);
								//Value *loadedTopicStrPtr = builder.CreateLoad(topicStrPtr->getType()->getPointerElementType(),topicStrPtr);
								//Value *topicCharPtr = builder.CreatePointerCast(loadedTopicStrPtr, builder.getInt8PtrTy());
								//argsV.push_back(topicCharPtr);
								//
								//std::vector<Value*> printfArgs;
								//printfArgs.push_back(builder.CreateGlobalStringPtr("Message Topic: %s\n"));
								//printfArgs.push_back(topicCharPtr);
								//builder.CreateCall(printfFunc, printfArgs, "tmp");

								//// converting firstType to string from Type
								//std::string typeName;
								//raw_string_ostream rso(typeName);
								//firstType->print(rso);
								//rso.flush();
								//outs()<<"Type: "<<typeName.find("class.mqtt::message") <<"\n";
								//// Calling the get_topic() to from msg
								//if(typeName.find("class.mqtt::message") != std::string::npos){
								//	//argsV.push_back(builder.CreateGlobalStringPtr("msg: class.mqtt::message", ""));
								//	llvm::Function* getTopicFunc = F.getParent()->getFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev");
								//	outs()<<"get_topic:"<<getTopicFunc->getName()<<"\n";
								//	outs()<<"Call:"<<*builder.CreateCall(getTopicFunc, v)<<"\n";

								//	//builder.CreateCall(printfFunc, builder.CreateCall(getTopicFunc, v), "calltmp");
								//	//llvm::Value *loadedValue = builder.CreateCall(getTopicFunc, v);
								//	//outs()<<v->getName()<<"\n";
								//	//std::string topic = builder.CreateCall(getTopicFunc, v); 
								//	//const char* topic_cstr = topic.c_str();
								//	//if(v != nullptr){
								//	//	llvm::Value* arg0 = builder.CreateLoad(v->getType()->getPointerElementType(), v);
								//	//	llvm::Value *topic = builder.CreateCall(getTopicFunc, {arg0});
								//	//	outs()<<"v: "<<*v<<"\n";
								//	//}
								//	//llvm::Value *loadedValue = builder.CreateLoad(firstType->getPointerElementType(), v);
								//	//argsV.push_back(loadedValue);
								//}

								//// Now getting the value pointer from shared value pointer using CreateGEP
								//Value *sharedPtrValue = builder.CreateLoad(v->getType()->getContainedType(0)->getContainedType(0), v);
								//Value *containedPtrValue = builder.CreateExtractValue(sharedPtrValue, {0});

								//llvm::Value *firstPtrValue = builder.CreateLoad(firstType->getPointerElementType(), builder.CreateGEP(v, {builder.getInt32(0), builder.getInt32(0)}));
								llvm::Value *loadedV = builder.CreateLoad(v->getType()->getPointerElementType(), v);
								//llvm::Value *firstPtrValue = builder.CreateLoad(firstType->getPointerElementType(), builder.CreateGEP(loadedV, {builder.getInt32(0), builder.getInt32(0)}));
								llvm::Value *firstPtrValue = builder.CreateLoad(firstType, builder.CreateGEP(firstType->getPointerElementType(), loadedV, {builder.getInt32(0), builder.getInt32(0)}));


								outs()<<"firstPtr value: "<<*firstPtrValue<<"\n";
								argsV.push_back(firstPtrValue);
								////argsV.push_back(builder.CreateGlobalStringPtr("This is msg part 1", ""));
							}
							else{
								llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
								outs()<<"loadedValue: "<<*loadedValue<<"\n";
					                	//argsV.push_back(loadedValue);
								argsV.push_back(builder.CreateGlobalStringPtr("This is msg part 2", ""));
							}
							continue;
					        }
						argsV.push_back(v);

					}
					
					//for (auto &v : arg_values) {
					//        //argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
					//        const DataLayout &DL = M.getDataLayout();
					//        unsigned SourceBitWidth = DL.getTypeSizeInBits(v->getType());
					//        //unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
					//        IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
					//        //Value *IntResult = builder.CreateBitCast(v, IntTy);

					//	std::string value_str;
    					//	llvm::raw_string_ostream rso(value_str);
    					//	v->print(rso);

    					//	// Create global string pointer that points to the string value
    					//	auto value_ptr = builder.CreateGlobalStringPtr(value_str, "value_str");

					//	//std:: string topic;
					//	//raw_string_ostream t(topic);
					//	//Value *tval = v;
					//	//tval<<*v;
					//	//argsV.push_back(builder.CreateGlobalStringPtr(tval->str(), ""));

					//	//StringRef str = argsV[0]->getName();
					//	//argsV.push_back(builder.CreateGlobalStringPtr(str.data(), ""));
					//	
					//	//Value *IntResult;
					//	//if(F.getName().contains("subtract")){
					//	//	//char char_array[256];
					//	//	StringRef str = argsV[0]->getName();
    					//	//	//printf("msg: %.*s\n", (int) str.size(), str.data());
					//	//	printf("msg: %s\n", str.data());

					//	//	Value *val = argsV[0];
					//	//	outs()<<*val<<"\n";
					//	//	
					//	//	val->print(rso);
					//	//	printf("As string: %s\n", rso.str().c_str());

					//	//}
					//	//if(v->getType()->isArrayTy()){
					//	//	continue;
					//	////	auto *ArrayTy = dyn_cast<ArrayType>(v->getType());
       					//	////	auto NumElements = ArrayTy->getNumElements();
       					//	////	auto *NewArrayType = ArrayType::get(ArrayTy->getElementType(), NumElements);
       					//	////	auto *NewIntArrayType = ArrayType::get(builder.getIntNTy(SourceBitWidth), NumElements);
       					//	////	auto *NewArray = builder.CreateBitCast(v, NewArrayType);
       					//	////	IntResult = builder.CreateBitCast(NewArray, NewIntArrayType);
					//	//}
					//	//if(v->getType()->isPointerTy()){
					//	//	IntResult = builder.CreatePtrToInt(v, IntTy);
					//	//}	
					//	//else{
					//	//	IntResult = builder.CreateBitCast(v, IntTy);
					//	//}
					//        //Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
					//        ////llvm_unreachable("Invalid type for cast");
					//	//argsV.push_back(Int32Result);
					//	////Value *ty = Int32Result->getType(); //problem is here
					//	////argsV.push_back(ty);
					//	//}
					//}
					builder.CreateCall(printfFunc, argsV, "calltmp"); 
				}

				//Process end time is printed here
				auto end = TimeRecord::getCurrentTime(false).getProcessTime();
                                //errs()<<"Process end time:"<< llvm::format("%0.1f", end ) << "ms\n";
				auto totalProcessTime = end-start;
				//errs()<<"Total process time: "<<llvm::format("%0.1f", totalProcessTime)<<"ms\n";
				
				std::string process("Total Process time:");
				process += std::to_string(totalProcessTime) +"\n";
				Value *processStr = builder.CreateGlobalStringPtr(process, "str");
				std::vector<Value *> processTime({processStr});
                                builder.CreateCall(printfFunc, processTime, "calltmp");
			}
		}
	}
        return true;


}


static void registerCPSPass(const PassManagerBuilder &,
                            legacy::PassManagerBase &PM) {

  PM.add(new CPSTracker());

}


static RegisterStandardPasses RegisterCPSPass(
    PassManagerBuilder::EP_ModuleOptimizerEarly, registerCPSPass);


static RegisterPass<CPSTracker> X("CPSTracker", "CPSTracker Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses RegisterCPSPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerCPSPass);

