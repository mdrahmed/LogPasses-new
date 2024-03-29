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
		for (BasicBlock &BB : F) {
			bool isConditional = false;
			for(Instruction &I: BB){
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
                        	//IRBuilder<> builder(&(*IP));
                        	IRBuilder<> builder(&I);
				//IRBuilder<> builder(&BB);
				if(auto *brInst = dyn_cast<BranchInst>(&I)){
					if(brInst -> isConditional()) {
						outs() << "Found conditional branch in function " << F.getName() << ":\n";
          					brInst->print(outs());
          					outs() << "\n";
						outs()<<"In this block: "<<BB<<"\n";
						Value *condition = brInst->getCondition();
						if (Instruction *condInst = dyn_cast<Instruction>(condition)) {
							// Here, `condInst` will contain `%180` instruction
							outs() << "Conditional Instruction: " << *condInst << "\n";
						  
							if(auto *callInst = dyn_cast<CallInst>(condInst)) {
								outs() << "Found call instruction in function " << F.getName() << ":\n";
								Function *calledFunction = callInst->getCalledFunction();
								outs()<<"Found callInst:"<<*callInst<<"\n\n";

								//if(calledFunction){
								//	outs()<<"Function:"<<calledFunction->getName()<<" called by "<<F.getName()<<"\n";
								//}
								if (calledFunction && calledFunction->getName() != "printf") {
									//StringRef functionName = calledFunction->getName();
									//outs()<<"Called function: "<<calledFunction->getName() <<"\n";
          								callInst->print(outs());
          								if (callInst->getType()->isVoidTy()) {
          									outs() << "This function does not return a value\n";
          								} 
									else {
          									outs() << "This function returns a value of type " << *(callInst->getType()) << "\n";
										//auto *loadInst = new LoadInst(callInst, "", false, &I);
										//if (callInst == BB.getTerminator()) {
										//    builder.SetInsertPoint(&BB, ++BB.end());
										//} else {
										//    builder.SetInsertPoint(&BB, ++I.getIterator());
										//}
										//builder.SetInsertPoint(&BB, ++(I.getIterator()) );
										//builder.SetInsertPoint(I.getNextNode());
										BasicBlock::iterator it(I);
										it++;
										builder.SetInsertPoint(&*it);
										Value *str = builder.CreateGlobalStringPtr("Function: \n", "str");
										//// This part will add only the value
                        							std::vector<Value *> argsV({str});
										//argsV.push_back(callInst);
										argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
										argsV.push_back( builder.CreateGlobalStringPtr(calledFunction->getName()) );
										Value *value = builder.CreateGlobalStringPtr(" value: ", "value");
										argsV.push_back(value);
										argsV.push_back(callInst);
										
										builder.CreateCall(printfFunc, argsV, "calltmp");
									}
          							}
							}
						}
					}
				}
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

