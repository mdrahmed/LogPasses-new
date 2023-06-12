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
		if(F.getName().contains("llvm.dbg") || F.getName().contains("_ZNSaIc") || F.getName().contains("__gnu_cxx") || F.getName().contains("_ZNSt9basic_ios") || F.getName().contains("gthread_active") || F.getName().contains("__cxx1112basic_string") )
			continue;
		bool isFunc = true;

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
                	timeStr = builderF.CreateGlobalStringPtr(dt, "time");
                	worldClock.push_back(timeStr);
                	builderF.CreateCall(printfFunc, worldClock, "calltmp");
                	worldClock.clear();

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
		//}
			for (BasicBlock &BB : F) {
				bool ifCallInst = false;
				bool ifTruncInst = false;
				for(Instruction &I: BB){
					BasicBlock::iterator IP = BB.getFirstInsertionPt();
                	        	//IRBuilder<> builder(&I);

					//IRBuilder<>builderF(&(*IP));
					//if(isFunc){
					//	std::string formatFunc("Function: ");
                	                //        formatFunc += "%s\n";
					//	//Value *functions = builder.CreateGlobalStringPtr("Function: ", "func");
					//	Value *functions = builderF.CreateGlobalStringPtr(formatFunc, "func");
					//	std::vector<Value *> func({functions});
					//	func.push_back( builderF.CreateGlobalStringPtr(F.getName()) );

					//	// Injecting World time
					//	now = std::time(0);
					//	dt = ctime(&now);
					//	timeStr = builderF.CreateGlobalStringPtr(dt, "time");
					//	worldClock.push_back(timeStr);
					//	builderF.CreateCall(printfFunc, worldClock, "calltmp");
					//	worldClock.clear();
					//	
					//	// Unix time
					//	unixSs <<"F2 Unix: "<< now <<"\n";
					//	ts = unixSs.str();
					//	unixT = builderF.CreateGlobalStringPtr(ts, "str");
					//	unixTime.push_back(unixT);
					//	builderF.CreateCall(printfFunc, unixTime, "calltmp");
					//	unixTime.clear();
					//	ts.clear();
					//	unixSs.str("");

					//	builderF.CreateCall(printfFunc, func, "function");
					//	isFunc = false;
					//}
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
								//StringRef functionName = calledFunction->getName();
								//outs()<<"Called function: "<<calledFunction->getName() <<"\n";
          							//outs() << "Found call instruction in function " << F.getName() << ":\n";
          							//callInst->print(outs());
								
								//auto &enbb = calledFunction->getEntryBlock();
								//if(!enbb.empty()){
								//	outs()<<"enbb is not empty:"<<enbb<<"\n";
								////	BasicBlock::iterator enIP = enbb.getFirstInsertionPt();
								////	IRBuilder<>builderCalledF(&(*enIP));
								////	outs()<<"enIP: "<<*enIP<<"\n";
								////	std::string formatCalledFunc("Called Function: ");
                	                        		////	formatCalledFunc += "%s\n";
								////	//Value *functions = builder.CreateGlobalStringPtr("Function: ", "func");
								////	Value *CalledFuncs = builder.CreateGlobalStringPtr(formatCalledFunc, "func");
								////	std::vector<Value *> CalledFunc({CalledFuncs});
								////	CalledFunc.push_back( builderCalledF.CreateGlobalStringPtr(calledFunction->getName()) );
								////	builderCalledF.CreateCall(printfFunc, CalledFunc, "CalledFunction");
								//}

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
									//// This part will add only the value
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
					//if(ifTruncInst){
					//	if(LoadInst *loadInst = dyn_cast<LoadInst>(&I)){
					//		//outs()<<"Found loadInst: "<<*loadInst<<"\n";
					//		if (loadInst == BB.getTerminator()) {
					//		    builder.SetInsertPoint(&BB, ++BB.end());
					//		} else {
					//		    builder.SetInsertPoint(&BB, ++I.getIterator());
					//		}
					//		//outs()<<"loadInst: "<<*loadInst<<"\n";
					//		std::string loadStr;
					//		raw_string_ostream loadStream(loadStr);
					//		loadInst->print(loadStream);
					//		std::string formatLoadInst("Global Variable: %s\n");
					//		Value *str = builder.CreateGlobalStringPtr(formatLoadInst, "global");
					//		Value *loadName = builder.CreateGlobalStringPtr(loadStr, "alloc");
					//		std::vector<Value *> argsV({str, loadName});
					//		builder.CreateCall(printfFunc, argsV, "globalVariables");
					//			
					//		// ADDING THE LOADINST VALUES HERE
					//		std::string intV("loadInst_values: ");
                	                //        	intV += "%d\n";
                	                //        	Value *intVal = builder.CreateGlobalStringPtr(intV, "");
                	                //        	std::vector<Value *> callV({intVal});
                	                //        	// If I simply push the values then it works fine but I have to get values for arm-32 bit.
                	                //        	// That's why I am bitcasting the values to a 32-bit result and then pushing it. But only this part is causing the error.
                	                //        	// Worked with 32 bit int and then all values except pointer and array worked
                	                //        	//for (auto &v : arg_values) {
					//		const DataLayout &DL = M.getDataLayout();
                	                //        	unsigned SourceBitWidth = DL.getTypeSizeInBits(loadInst->getType());
                	                //        	//unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
                	                //        	IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
                	                //        	//Value *IntResult = builder.CreateBitCast(v, IntTy);
                	                //        	Value *IntResult;
                	                //        	if(loadInst->getType()->isArrayTy()){
                	                //        	        continue;
                	                //        	}
                	                //        	if(loadInst->getType()->isPointerTy()){
                	                //        	        IntResult = builder.CreatePtrToInt(loadInst, IntTy);
                	                //        	        //llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
                	                //        	        //callV.push_back(loadedValue);
                	                //        	        //continue;
                	                //        	}
                	                //        	else{
                	                //        	        IntResult = builder.CreateBitCast(loadInst, IntTy);
                	                //        	}
                	                //        	Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
                	                //        	//llvm_unreachable("Invalid type for cast");
                	                //        	callV.push_back(Int32Result);

					//		//// Injecting World time
                	                //                //now = std::time(0);
                	                //                //dt = ctime(&now);
                	                //                //timeStr = builder.CreateGlobalStringPtr(dt, "time");
                	                //                //worldClock.push_back(timeStr);
                	                //                //builder.CreateCall(printfFunc, worldClock, "calltmp");
                	                //                //worldClock.clear();

                	                //                //// Unix time
                	                //                //unixSs <<"Unix: "<< now;
                	                //                //ts = unixSs.str();
                	                //                //unixT = builder.CreateGlobalStringPtr(ts, "str");
                	                //                //unixTime.push_back(unixT);
                	                //                //builder.CreateCall(printfFunc, unixTime, "calltmp");
                	                //                //unixTime.clear();

                	                //        	builder.CreateCall(printfFunc, callV, "calltmp");
					//	}
					//	else if(TruncInst *truncInst = dyn_cast<TruncInst>(&I)){
					//		//outs()<<"Found TruncInst: "<<*truncInst<<"\n";
					//	}
					//}
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

