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
		bool isFunc = true;
		for (BasicBlock &BB : F) {
			bool ifCallInst = false;
			bool ifTruncInst = false;

			//auto terminatorInst = BB.getTerminator();
			//unsigned int numReturnValues = 0;
			//if(F.getName() == "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_"){
			//	if (auto returnInst = dyn_cast<ReturnInst>(&terminatorInst)) {
			//		// This basic block ends with a return instruction
			//		numReturnValues += returnInst->getNumOperands();
			//	}
			//	outs()<<"The problem function:"<<F.getName()<<" returning "<<numReturnValues<<"\n";
			//}

  
			for(Instruction &I: BB){
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
                        	IRBuilder<> builder(&I);
				
				IRBuilder<>builderF(&(*IP));
				if(isFunc){
					std::string formatFunc("Function: ");
                                        formatFunc += "%s\n";
					//Value *functions = builder.CreateGlobalStringPtr("Function: ", "func");
					Value *functions = builder.CreateGlobalStringPtr(formatFunc, "func");
					std::vector<Value *> func({functions});
					func.push_back( builder.CreateGlobalStringPtr(F.getName()) );
					builderF.CreateCall(printfFunc, func, "function");
					isFunc = false;
				}
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
								std::string formatCallInst("Calling: ");
                                        			formatCallInst += "%s %s\n";
                                        			//formatCallInst += " value %s\n";
								Value *str = builder.CreateGlobalStringPtr(formatCallInst, "str");
								//// This part will add only the value
                        					std::vector<Value *> argsV({str});
								//argsV.push_back(callInst);
								argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
								argsV.push_back( builder.CreateGlobalStringPtr(calledFunction->getName()) );
								builder.CreateCall(printfFunc, argsV, "calltmp");

								if(calledFunction->getName() == "_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_"){
									outs()<<"Returned type: "<<*calledFunction->getType()<<"\n";
									//argsV.push_back();
									continue;
								}

								std::string formatValue(" Value: %s %s\n");
								//formatValue += " %s\n";
								Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
								std::vector<Value *> argsValue({value});
								////argsValue.push_back(value);
								//argsValue.push_back(callInst);
								//builder.CreateCall(printfFunc, argsValue, "value");
								const DataLayout &DL = M.getDataLayout();
                                                		unsigned SourceBitWidth = DL.getTypeSizeInBits(callInst->getType());
                                                		IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
                                                		//Value *IntResult = builder.CreateBitCast(v, IntTy);
                                                		Value *IntResult = nullptr;
								Value *cond, *getV;
								bool type = false;
								//if(callInst->){
								//	//getValue = callInst.getValueOrNull();
								//	argsV.push_back(getValue);
								//}
								//getV = callInst->getReturnValue();
								//getV = callInst->getCalledValue(); // this function and getReturnValue is not present in llvm1 or, it can be a typo
                                                		if(callInst->getType()->isArrayTy()){
									//outs()<<"Callinst is an array type.\n";
									cond = builder.CreateGlobalStringPtr("arrayType");
                                                		        continue;
                                                		}
								else if(callInst->getType()->isPointerTy()){
									//outs()<<"Callinst is a pointer type.\n";
                                                		        IntResult = builder.CreatePtrToInt(callInst, IntTy);
									type = true;
									cond = builder.CreateGlobalStringPtr("pointerType");
                                                		}
                                                		else if(callInst->getType()->isIntegerTy()){
									//outs()<<"Callinst is a different type.\n";
                                                		        IntResult = builder.CreateBitCast(callInst, IntTy);
									type = true;
									cond = builder.CreateGlobalStringPtr("intType");
                                                		}
                                                		//else if(getV->getType()->isIntegerTy(1)){
								//	//outs()<<"Callinst is a different type.\n";
                                                		//        //IntResult = builder.CreateBitCast(getV, IntTy);
								//	//type = true;
								//	cond = builder.CreateGlobalStringPtr("boolType");
                                                		//}
								else{
									cond = builder.CreateGlobalStringPtr("differentType");
								}
                                                		//Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
                                                		//argsValue.push_back(Int32Result);

								std::string typeName;
								raw_string_ostream rso(typeName);
								callInst->getType()->print(rso);
								rso.flush();
								//outs()<<"Type: "<<typeName <<"\n";

								argsValue.push_back( builder.CreateGlobalStringPtr(typeName) );
								argsValue.push_back(cond);
								builder.CreateCall(printfFunc, argsValue, "value");

								std::string intV(" intV: %d\n");
								Value *intVal = builder.CreateGlobalStringPtr(intV, "intvalue");
								std::vector<Value *> intValue({value});
								Value *Int32Result;
								if(type){
                                                		      Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
                                                		      intValue.push_back(Int32Result);
								}
								intValue.push_back(Int32Result);
                                                		//argsValue.push_back(Int32Result);
								builder.CreateCall(printfFunc, intValue, "intValue");
							}
          					}
					}
				}
				if(ifTruncInst){
					if(LoadInst *loadInst = dyn_cast<LoadInst>(&I)){
						//outs()<<"Found loadInst: "<<*loadInst<<"\n";
						if (loadInst == BB.getTerminator()) {
						    builder.SetInsertPoint(&BB, ++BB.end());
						} else {
						    builder.SetInsertPoint(&BB, ++I.getIterator());
						}
						//Value* PointerOperand = loadInst->getPointerOperand();
						//outs()<<"PointerOperand: "<<*PointerOperand<<"\n";
						//AllocaInst* Alloca = dyn_cast<AllocaInst>(PointerOperand);
						//if (Alloca) {
						//    StringRef Name = Alloca->getName();
						//    outs() << "Pointer name: " << Name << "\n";
						//}

						//outs()<<"loadInst: "<<*loadInst<<"\n";
						std::string loadStr;
						raw_string_ostream loadStream(loadStr);
						loadInst->print(loadStream);

						std::string formatLoadInst("Global Variable: %s\n");
                                                //formatLoadInst += "%s\n";
						Value *str = builder.CreateGlobalStringPtr(formatLoadInst, "global");
						Value *loadName = builder.CreateGlobalStringPtr(loadStr, "alloc");
						std::vector<Value *> argsV({str, loadName});
						//argsV.push_back(builder.CreateGlobalStringPtr(loadInst) );
						
						//argsV.push_back(loadInst);
						builder.CreateCall(printfFunc, argsV, "globalVariables");
					}
					else if(TruncInst *truncInst = dyn_cast<TruncInst>(&I)){
						//outs()<<"Found TruncInst: "<<*truncInst<<"\n";
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

