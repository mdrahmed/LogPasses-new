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
				//if(isConditional){
				//if(auto *callInst = dyn_cast<CallInst>(&I)) {
				//	outs() << "Found call instruction in function " << F.getName() << ":\n";
				//	Function *calledFunction = callInst->getCalledFunction();
				//	outs()<<"Found callInst:"<<*callInst<<"\n";

				//	//if(calledFunction){
				//	//	outs()<<"Function:"<<calledFunction->getName()<<" called by "<<F.getName()<<"\n";
				//	//}
				//	if (calledFunction && calledFunction->getName() != "printf") {
				//		//StringRef functionName = calledFunction->getName();
				//		//outs()<<"Called function: "<<calledFunction->getName() <<"\n";
          			//		outs() << "Found call instruction in function " << F.getName() << ":\n";
          			//		callInst->print(outs());
          			//		if (callInst->getType()->isVoidTy()) {
          			//			outs() << "This function does not return a value\n";
          			//		} 
				//		else {
          			//			outs() << "This function returns a value of type " << *(callInst->getType()) << "\n";
				//			//auto *loadInst = new LoadInst(callInst, "", false, &I);
				//			if (callInst == BB.getTerminator()) {
				//			    builder.SetInsertPoint(&BB, ++BB.end());
				//			} else {
				//			    builder.SetInsertPoint(&BB, ++I.getIterator());
				//			}
				//			Value *str = builder.CreateGlobalStringPtr("Function: \n", "str");
				//			//// This part will add only the value
                        	//			std::vector<Value *> argsV({str});
				//			//argsV.push_back(callInst);
				//			argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
				//			argsV.push_back( builder.CreateGlobalStringPtr(calledFunction->getName()) );
				//			Value *value = builder.CreateGlobalStringPtr(" value: ", "value");
				//			argsV.push_back(value);
				//			argsV.push_back(callInst);
				//			
				//			builder.CreateCall(printfFunc, argsV, "calltmp");
				//		}
          			//	}
				//}
				//isConditional = false;
				//}
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
                                        			formatCallInst += "%s %s ";
                                        			//formatCallInst += " value %s\n";
								Value *str = builder.CreateGlobalStringPtr(formatCallInst, "str");
								//// This part will add only the value
                        					std::vector<Value *> argsV({str});
								//argsV.push_back(callInst);
								argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
								argsV.push_back( builder.CreateGlobalStringPtr(calledFunction->getName()) );
								builder.CreateCall(printfFunc, argsV, "calltmp");

								//std::string formatValue(" Value: ");
								//formatValue += " %s\n";
								//Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
								//std::vector<Value *> argsValue({value});
								////argsValue.push_back(value);
								//argsValue.push_back(callInst);
								//builder.CreateCall(printfFunc, argsValue, "value");
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

