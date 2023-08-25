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
#include <regex>

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

// Now, this function is correctly determining all the application level functions
bool isDefinedInHeader(const llvm::Function* function) {
	//outs()<<"All functions: "<<function->getName()<<"\n";
	if (function) {
		if (llvm::DISubprogram* subprogram = function->getSubprogram()) {
		  // Check if the function's source file name ends with a header extension
		  llvm::StringRef filename = subprogram->getFilename();
		  //if (filename.endswith(".h") || filename.endswith(".hpp") || filename.endswith(".hxx")) {
		  //  outs()<<"Header: "<<filename<<"\n";
		  //  return true;
		  //}
			if (filename.endswith(".cpp") || filename.contains("deps/include/KeLibTxtDl.h") || filename.contains("deps/include/FtShmem.h") || filename.contains("deps/include/MQTTClient.h") || filename.contains("deps/include/MQTTAsync.h") || filename.contains("MQTTClientPersistence.h") || filename.contains("deps/include/freefare.h") ||
	  			filename.contains("deps/include/mqtt/") || filename.contains("deps/include/json/") || filename.contains("deps/include/nfc/") ||
	  			filename.contains("TxtSmartFactoryLib/include/") || filename.contains("TxtSmartFactoryLib/libs/")) {
				//outs() << "Header: " << filename << "\n";
	    		//outs() << "Functions: " <<function->getName() << "\n";
	    		return true;
	  		}
	
	  	}
	}
  return false;
}

char CPSTracker::ID = 0;

bool CPSTracker::runOnModule(Module &M) {
    	
	LLVMContext &context = M.getContext();
  	// Defining the printf function
	Type *intType = Type::getInt32Ty(context);
  	std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
  	FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
  	auto printfFunc = M.getOrInsertFunction("printf", printfType);

	// date and time
	std::time_t now;
  	char* dt;
  	Value* timeStr;
  	std::vector<Value*> worldClock;

  	// Unix time
  	std::stringstream unixSs;
  	std::string ts;
  	Value* unixT;
  	std::vector<Value*> unixTime;

	for (auto &F:M){
		// Ignoring the init function for now, which is also a application level function
		if(!isDefinedInHeader(&F) || F.getName().contains("cxx_global_var_init") || F.getName().contains("creating_server_c")){
			continue;
		}
		//outs()<<"Passed Function: "<<F.getName()<<"\n";
		//bool isFunc = true; //Not used

		// Noting the arguments and functions
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

		if(!F.isDeclaration()){
			auto &BB = F.getEntryBlock();
			BasicBlock::iterator IP = BB.getFirstInsertionPt();
      		IRBuilder<> builderF(&(*IP));
	  		std::string formatFunc("FFF Function: ");
      		formatFunc += "%s\n";
      		Value *functions = builderF.CreateGlobalStringPtr(formatFunc, "func");
      		std::vector<Value *> func({functions});
      		func.push_back( builderF.CreateGlobalStringPtr(F.getName()) );

      		// Injecting World time
      		now = std::time(0);
      		dt = ctime(&now);
      		unixSs <<"\n"<< dt;
      		ts = unixSs.str();
      		timeStr = builderF.CreateGlobalStringPtr(ts, "time");
      		worldClock.push_back(timeStr);
      		builderF.CreateCall(printfFunc, worldClock, "calltmp");
      		worldClock.clear();
      		ts.clear();
      		unixSs.str("");

      		// Unix time
      		unixSs <<"F1 Unix: "<< now <<"\n";
      		ts = unixSs.str();
      		unixT = builderF.CreateGlobalStringPtr(ts, "str");
      		unixTime.push_back(unixT);
      		builderF.CreateCall(printfFunc, unixTime, "calltmp");
      		unixTime.clear();
      		ts.clear();
      		unixSs.str("");

      		builderF.CreateCall(printfFunc, func, "function");

			// publish and message_arrived topic
			if(F.getName().contains("publish") || F.getName().contains("message_arrived")){
    	  		outs()<<"publish found\n";
      			// If a function is declared then it will not have basic blocks in them. So, if a function is not delcared then it will have basic block, which I need to insert printf
      			for (BasicBlock &BB : F) {
      				for(Instruction &I: BB){
      					IRBuilder<> builder(&I);
      					// publish get_topic
      					if(auto *callInst = dyn_cast<InvokeInst>(&I)) {
      						llvm::Value* calledValue = callInst->getCalledOperand();
      						if (llvm::isa<llvm::Function>(calledValue)) {
      							Function *calledFunction = callInst->getCalledFunction();
      							if (calledFunction && calledFunction->getName().contains("make_message")) {
      								//outs()<<"Invoked function: "<<calledFunction->getName()<<"\n";
      								//outs()<<"Invoke inst: "<<*callInst<<"\n";
      								if (callInst == BB.getTerminator()) {
      								    builder.SetInsertPoint(&BB, ++BB.end());
      								} else {
      								    builder.SetInsertPoint(&BB, ++I.getIterator());
      								}
      								llvm::Value* secondParam = callInst->getArgOperand(1);
      								//outs()<<"2nd parameter: "<<*secondParam<<"\n";
      								//outs()<<"param type: "<<*secondParam->getType()<<"\n";
      								llvm::Value* loadedValue = builder.CreateLoad(secondParam->getType()->getPointerElementType(), secondParam);
      								//llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
      								llvm::Function* c_str = F.getParent()->getFunction("_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv");
      								//llvm::Function* c_str = F.getParent()->getFunction("c_str");
      								//outs()<<"c_str(): "<< *c_str<<"\n";
      								//secondParam is not giving any error
      								//Value *topicStr = builder.CreateCall(c_str, secondParam); // Whenever I am passing the callInst then it is giving error
      								Value *topicStr = builder.CreateCall(c_str, loadedValue); // Whenever I am passing the callInst then it is giving error
      								std::string formatValue("publish get_topic value: ");
      								formatValue += " %s\n";
      								Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
      								std::vector<Value *> argsValue({value});
      								//argsValue.push_back(loadedValue);
      								argsValue.push_back(topicStr);
      								builder.CreateCall(printfFunc, argsValue, "value");
      								//break;
      							}
      					 	}
         				}   
						// Message_arrived topic
          				if(auto *callInst = dyn_cast<CallInst>(&I)) {
          					Function *calledFunction = callInst->getCalledFunction();
          				    if(calledFunction){
          				    	if(calledFunction->getName().contains("get_topic")){
          				    		//outs()<<"get_topic CallInst:"<< *callInst<<"\n";
          				    		//outs()<<"get_topic:"<<calledFunction->getName()<<"\n";
          				    		if (callInst == BB.getTerminator()) {
          				    		    builder.SetInsertPoint(&BB, ++BB.end());
          				    		} else {
          				    		    builder.SetInsertPoint(&BB, ++I.getIterator());
          				    		}

          				    		llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
          				    		//Following function will work in the testbed code as they have this function defined.
          				    		//llvm::Function* c_str = F.getParent()->getFunction("_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv");
          				    		//outs()<<"c_str(): "<< *c_str<<"\n";
          				    		Value *topicStr = builder.CreateCall(c_str, callInst);
          				    		//argsV.push_back(topicStr);

          				    		std::string formatValue("message_arrived get_topic value: ");
          				    		formatValue += " %s\n";
          				    		Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
          				    		std::vector<Value *> argsValue({value});
          				    		//argsValue.push_back(value);
          				    		argsValue.push_back(topicStr);
          				    		builder.CreateCall(printfFunc, argsValue, "value");
          				    		//break;
          				    	}
          				   }
         				}
					}
				}
			}

			// Now, inserting the arguments and parameters
			{
				// auto &BB = F.getEntryBlock();        
				std::vector<std::string> arguments; // This vector will be used to store functions arguments name
				// BasicBlock::iterator IP = BB.getFirstInsertionPt();
				// IRBuilder<> builderAV(&(*IP));
				{
					// Getting the arguments for this function
					std::string format("arguments: ");
					std::string s;
        			raw_string_ostream rso(s);
					//rso << F.getName() << " ";
					arguments.push_back(rso.str());
					// Pushing the argument names in the arguments vector
					for(auto i = F.arg_begin();i!=F.arg_end();++i){
						rso << *i;
						arguments.push_back(rso.str());
					}
					// Add string format specifier for each argument we will later print
					for (size_t i = 0; i < arguments.size(); ++i) {
						if(i == arguments.size()-1){
							format += " %s\n";
						}
						else
							format += " %s ,";
					}
					if(arguments.size() == 1){
						format += "None\n";
					}
					//format += "\n";
					Value *str = builderF.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
					// pushing values into argsV after creating a string pointer to arguments
					for (auto &s : arguments) {
						argsV.push_back(builderF.CreateGlobalStringPtr(s, ""));
					}
					// Calling the printf funcion
					builderF.CreateCall(printfFunc, argsV, "calltmp");				
				}
				// Now, starting to record values		
				{
					// using the format specifier for printing the values
					std::string format("arg_values: ");
					// outs()<<arg_values.size()<<"\n";
					for (size_t i = 0; i < arg_values.size(); ++i) {
						if(i == arg_values.size()-1)
							format += "%d\n";
						else
							format += "%d ,";
					}
					if(arg_values.size() == 0){
						format += "None\n";
					}
					Value *str = builderF.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
					// If I simply push the values then it works fine but I have to get values for arm-32 bit.
					// That's why I am bitcasting the values to a 32-bit result and then pushing it. But only this part is causing the error. 
					
					// Worked with 32 bit int and then all values except pointer and array worked
					for (auto &v : arg_values) {
						//argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
						const DataLayout &DL = M.getDataLayout();
						unsigned SourceBitWidth = DL.getTypeSizeInBits(v->getType());
						//unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
						IntegerType *IntTy = builderF.getIntNTy(SourceBitWidth);
						//Value *IntResult = builderAV.CreateBitCast(v, IntTy);
						
						Value *IntResult;
						
						if(v->getType()->isArrayTy()){
							continue;
							//auto *ArrayTy = dyn_cast<ArrayType>(v->getType());
       						//auto NumElements = ArrayTy->getNumElements();
       						//auto *NewArrayType = ArrayType::get(ArrayTy->getElementType(), NumElements);
       						//auto *NewIntArrayType = ArrayType::get(builder.getIntNTy(SourceBitWidth), NumElements);
       						//auto *NewArray = builder.CreateBitCast(v, NewArrayType);
       						//IntResult = builder.CreateBitCast(NewArray, NewIntArrayType);
						}
						if(v->getType()->isPointerTy()){
							IntResult = builderF.CreatePtrToInt(v, IntTy);
						}	
						else{
							IntResult = builderF.CreateBitCast(v, IntTy);
						}
					  	Value *Int32Result = builderF.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
					  	//llvm_unreachable("Invalid type for cast");
						argsV.push_back(Int32Result);
						////Value *ty = Int32Result->getType(); //problem is here
						////argsV.push_back(ty);
						//}
					}
					builderF.CreateCall(printfFunc, argsV, "calltmp"); 
				}
			}
			for (BasicBlock &BB : F) {
				bool ifCallInst = false;
				bool ifTruncInst = false;
				for(Instruction &I: BB){
					BasicBlock::iterator IP = BB.getFirstInsertionPt();
					if(auto *brInst = dyn_cast<BranchInst>(&I)){
						if(brInst -> isConditional()) {
							//outs() << "Found conditional branch in function " << F.getName() << ":\n";
          					//brInst->print(outs());
          					//outs() << "\n";
							//outs()<<"In this block: "<<BB<<"\n";
							Value *condition = brInst->getCondition();
							if (Instruction *condInst = dyn_cast<Instruction>(condition)) {
								// Here, `condInst` will contain `%180` instruction
								//outs() << "Conditional Instruction: " << *condInst << "\n";
								Instruction* PrevInst = I.getPrevNode();
								//if(PrevInst)
								//	outs() <<"Previous instruction: "<<*PrevInst<<"\n";
								//if(auto *callInst = dyn_cast<CallInst>(&condInst)) {
								//      ifCallInst = true;
								//}
								//else if(TruncInst *truncInst = dyn_cast<TruncInst>(&condInst)) {
								//	ifTruncInst = true;
								//}
							}
							if(isa<CallInst>(condition)){
								ifCallInst = true;
							}
							else if(isa<TruncInst>(condition)){
								ifTruncInst = true;
							}

							// Insert 1/0 in the successsor block,

							BasicBlock* trueBlock = brInst->getSuccessor(0);  // True branch
							BasicBlock* falseBlock = brInst->getSuccessor(1); // False branch

							BasicBlock::iterator trueIP = trueBlock->getFirstInsertionPt();
							IRBuilder<> buildert(&*trueIP);
							//Value *strTrue = buildert.CreateGlobalStringPtr("Condition true block: 1\n");
							//std::vector<Value *> argst({strTrue});
              				//buildert.CreateCall(printfFunc, argst, "calltmp");

							for (Instruction &fI : *trueBlock) {
							    if (LoadInst *loadInst = dyn_cast<LoadInst>(&fI)) {
							        if (loadInst == trueBlock->getTerminator()) {
							            buildert.SetInsertPoint(trueBlock, ++trueBlock->end());
							        } else {
							            buildert.SetInsertPoint(trueBlock, ++fI.getIterator());
							        }
							        std::string intV("loaded values: ");
							        intV += "%d\n";
							        Value *intVal = buildert.CreateGlobalStringPtr(intV, "");
							        std::vector<Value *> callV({intVal});
							        const DataLayout &DL = M.getDataLayout();
							        unsigned SourceBitWidth = DL.getTypeSizeInBits(loadInst->getType());
							        IntegerType *IntTy = buildert.getIntNTy(SourceBitWidth);
							        Value *IntResult;
							        if (loadInst->getType()->isArrayTy()) {
							            continue;
							        }
							        if (loadInst->getType()->isPointerTy()) {
							            IntResult = buildert.CreatePtrToInt(loadInst, IntTy);
							        } else {
							            IntResult = buildert.CreateBitCast(loadInst, IntTy);
							        }
							        Value *Int32Result = buildert.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
							        callV.push_back(Int32Result);

									// Injecting World time
                	    			now = std::time(0);
                	    			dt = ctime(&now);
                	    			timeStr = buildert.CreateGlobalStringPtr(dt, "time");
                	    			worldClock.push_back(timeStr);
                	    			buildert.CreateCall(printfFunc, worldClock, "calltmp");
                	    			worldClock.clear();

                	    			// Unix time
                	    			unixSs <<"TB Unix: "<< now <<"\n";
                	    			ts = unixSs.str();
                	    			unixT = buildert.CreateGlobalStringPtr(ts, "str");
                	    			unixTime.push_back(unixT);
                	    			buildert.CreateCall(printfFunc, unixTime, "calltmp");
                	    			unixTime.clear();
                	    			ts.clear();
                	    			unixSs.str("");

							        buildert.CreateCall(printfFunc, callV, "calltmp");
							    }
							}

							BasicBlock::iterator falseIP = falseBlock->getFirstInsertionPt();
              				IRBuilder<> builderf(&*falseIP);
              				//Value *strFalse = builderf.CreateGlobalStringPtr("Condition false block: 0\n");
              				//std::vector<Value *> argsf({strFalse});
              				//builderf.CreateCall(printfFunc, argsf, "calltmp");

							for (Instruction &fI : *falseBlock) {
							    if (LoadInst *loadInst = dyn_cast<LoadInst>(&fI)) {
							        if (loadInst == falseBlock->getTerminator()) {
							            builderf.SetInsertPoint(falseBlock, ++falseBlock->end());
							        } else {
							            builderf.SetInsertPoint(falseBlock, ++fI.getIterator());
							        }
							        std::string intV("loaded values: ");
							        intV += "%d\n";
							        Value *intVal = builderf.CreateGlobalStringPtr(intV, "");
							        std::vector<Value *> callV({intVal});
							        const DataLayout &DL = M.getDataLayout();
							        unsigned SourceBitWidth = DL.getTypeSizeInBits(loadInst->getType());
							        IntegerType *IntTy = builderf.getIntNTy(SourceBitWidth);
							        Value *IntResult;
							        if (loadInst->getType()->isArrayTy()) {
							            continue;
							        }
							        if (loadInst->getType()->isPointerTy()) {
							            IntResult = builderf.CreatePtrToInt(loadInst, IntTy);
							        } else {
							            IntResult = builderf.CreateBitCast(loadInst, IntTy);
							        }
							        Value *Int32Result = builderf.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
							        callV.push_back(Int32Result);

									// Injecting World time
                	    			now = std::time(0);
                	    			dt = ctime(&now);
                	    			timeStr = builderf.CreateGlobalStringPtr(dt, "time");
                	    			worldClock.push_back(timeStr);
                	    			builderf.CreateCall(printfFunc, worldClock, "calltmp");
                	    			worldClock.clear();

                	    			// Unix time
                	    			unixSs <<"FB Unix: "<< now <<"\n";
                	    			ts = unixSs.str();
                	    			unixT = builderf.CreateGlobalStringPtr(ts, "str");
                	    			unixTime.push_back(unixT);
                	    			builderf.CreateCall(printfFunc, unixTime, "calltmp");
                	    			unixTime.clear();
                	    			ts.clear();
                	    			unixSs.str("");

							        builderf.CreateCall(printfFunc, callV, "calltmp");
							    }
							}

							//outs()<<"True false block instrumented.\n";
						}
					}
				}
				
				for(Instruction &I: BB){
					BasicBlock::iterator IP = BB.getFirstInsertionPt();
                	IRBuilder<> builder(&I);
					if(ifCallInst){
						if(auto *callInst = dyn_cast<CallInst>(&I)) {
							//outs()<<"Conditional branch with call inst in this BB: "<<BB<<"\n";
							//outs() << "Found call instruction in function " << F.getName() << ":\n";
							Function *calledFunction = callInst->getCalledFunction();
							//outs()<<"Found callInst:"<<*callInst<<"\n";

							if (calledFunction && calledFunction->getName() != "printf") {
								if (callInst->getType()->isVoidTy()) {
          							//outs() << "This function does not return a value\n";
          							//continue;
								} 
								else {
          							//outs() << "This function returns a value of type " << *(callInst->getType()) << "\n";
									//auto *loadInst = new LoadInst(callInst, "", false, &I);
									if (callInst == BB.getTerminator()) {
									    builder.SetInsertPoint(&BB, ++BB.end());
									} else {
									    builder.SetInsertPoint(&BB, ++I.getIterator());
									}
									std::string formatCallInst("Called from: ");
                					formatCallInst += "%s %s ";
                					//formatCallInst += " value %s\n";
									Value *str = builder.CreateGlobalStringPtr(formatCallInst, "str");
									// This part will add only the value
                					std::vector<Value *> argsV({str});
									//argsV.push_back(callInst);
									argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
									argsV.push_back( builder.CreateGlobalStringPtr(calledFunction->getName()) );
									//argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
									
									// Injecting World time
                					now = std::time(0);
                					dt = ctime(&now);
                					timeStr = builder.CreateGlobalStringPtr(dt, "time");
                					worldClock.push_back(timeStr);
                					builder.CreateCall(printfFunc, worldClock, "calltmp");
                					worldClock.clear();

                					// Unix time
                					unixSs <<"CF Unix: "<< now <<"\n";
                					ts = unixSs.str();
                					unixT = builder.CreateGlobalStringPtr(ts, "str");
                					unixTime.push_back(unixT);
                					builder.CreateCall(printfFunc, unixTime, "calltmp");
                					unixTime.clear();
                					ts.clear();
                					unixSs.str("");

									builder.CreateCall(printfFunc, argsV, "calltmp");

									//std::string formatValue(" Value: ");
									//formatValue += " %s\n";
									//Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
									//std::vector<Value *> argsValue({value});
									////argsValue.push_back(value);
									//argsValue.push_back(callInst);
									//builder.CreateCall(printfFunc, argsValue, "value");

									// ADDING THE CALLINST VALUES HERE
									std::string intV("callInst_values: ");
                					//for (size_t i = 0; i < arg_values.size(); ++i) {
                					intV += "%d\n";
                					//}
                					Value *intVal = builder.CreateGlobalStringPtr(intV, "");
                					std::vector<Value *> callV({intVal});
                					// If I simply push the values then it works fine but I have to get values for arm-32 bit.
                					// That's why I am bitcasting the values to a 32-bit result and then pushing it. But only this part is causing the error.
                					// Worked with 32 bit int and then all values except pointer and array worked
                					//for (auto &v : arg_values) {
													const DataLayout &DL = M.getDataLayout();
                					unsigned SourceBitWidth = DL.getTypeSizeInBits(callInst->getType());
                					//unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
                					IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
                					//Value *IntResult = builder.CreateBitCast(v, IntTy);
                					Value *IntResult;
                					if(callInst->getType()->isArrayTy()){
                					        continue;
                					}
                					if(callInst->getType()->isPointerTy()){
                					        IntResult = builder.CreatePtrToInt(callInst, IntTy);
                					        //llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
                					        //callV.push_back(loadedValue);
                					        //continue;
                					}
                					else{
                					        IntResult = builder.CreateBitCast(callInst, IntTy);
                					}
                					Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
                					//llvm_unreachable("Invalid type for cast");
                					callV.push_back(Int32Result);

                					builder.CreateCall(printfFunc, callV, "calltmp");
								}
          					}
						}
					}
				}
				
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

