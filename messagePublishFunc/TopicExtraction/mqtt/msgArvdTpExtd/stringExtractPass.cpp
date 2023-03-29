// This is the pass which is extract string from a pointer not from a shared pointer

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
		if(F.getName().contains("message_arrived") || F.getName().contains("get_topic") || F.getName().contains("publish") || F.getName().contains("disconnect") || F.getName().contains("connection_lost") || F.getName().contains("delivery_complete")){
		//if(F.getName().contains("message_arrived") || F.getName().contains("publish") || F.getName().contains("requestOrder") || F.getName().contains("startThread") || F.getName().contains("start_thread") || F.getName().contains("run") || F.getName().contains("fsmStep") || F.getName().contains("printState") || F.getName().contains("setTarget") || F.getName().contains("moveDeliveryInAndGrip") || F.getName().contains("moveNFC") ){
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

					for (auto &v : arg_values) {
						if(v->getType()->isPointerTy()){
							//String is loaded here
							llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
							//String is pushed to asgsV
							argsV.push_back(loadedValue);
							
							// trying to extract topic from here
							//v->dump();
							//llvm::Value* sharedPtrValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
							//llvm::Value* ptrValue = builder.CreateExtractValue(sharedPtrValue, {0});
							//llvm::Value* loadedValue = builder.CreateLoad(ptrValue,"");
							//argsV.push_back(loadedValue);
							//argsV.push_back(builder.CreateGlobalStringPtr("pointer"));
							
							outs()<<"Pointer type:"<< *v->getType() <<"\n";
							outs()<<"Contained type(0): "<<*v->getType()->getContainedType(0)<<"\n";

							std::string typeName;
							raw_string_ostream rso(typeName);
							v->print(rso);
							rso.flush();
							outs()<<"Type: "<<typeName <<"\n";

							// not able to find shared pointer
							/*
							llvm::Type *elementType = v->getType()->getPointerElementType();
							if (auto *ptrType = llvm::dyn_cast<llvm::PointerType>(elementType)) {
							    llvm::Type *pointedType = ptrType->getPointerElementType();
							    outs()<<"It's a pointer.\n";
							    if (pointedType->isIntegerTy(8)) {
							        llvm::Type *sharedPtrType = llvm::Type::getInt8PtrTy(context); // modify for actual shared pointer type
								outs()<<"Got the original shared pointer type.\n";
							        if (ptrType == sharedPtrType) {
							            // Pointer to a shared pointer of a string
							            llvm::Value *sharedPtrValue = builder.CreateLoad(elementType, v);
							            llvm::Value *loadedValue = builder.CreateLoad(sharedPtrValue->getType()->getPointerElementType(), sharedPtrValue);
							            argsV.push_back(loadedValue);
								    outs()<<"It's a shared pointer.\n";
							        }
							    }
							}
							*/
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

