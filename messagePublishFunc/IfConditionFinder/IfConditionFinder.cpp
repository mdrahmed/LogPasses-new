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


	std::vector<StringRef> functions;	
	std::vector<StringRef> alp_funcs;

	int i,alp;
	i = 0;
	alp = 0;

	for (auto &F:M){
		//errs() << "Function: " << F.getName() << "\n";
	        for (BasicBlock &BB : F) {
	          for (Instruction &I : BB) {
			if (ICmpInst *CI = dyn_cast<ICmpInst>(&I)) {
                          // Get the operands of the icmp instruction
                          Value *Op1 = CI->getOperand(0);
                          Value *Op2 = CI->getOperand(1);
			  outs()<<"Op1:"<<*Op1<<"\tOp2:"<<*Op2<<"\n";

                          // Get the names of the operands
                          //StringRef Op1Name = Op1->getName();
                          //StringRef Op2Name = Op2->getName();

			  StringRef Op1Name = Op1->hasName() ? Op1->getName() : "unnamed";
      			  StringRef Op2Name = Op2->hasName() ? Op2->getName() : "unnamed";
                          // Print the name of the operands and the condition
                          outs() << "If Condition:\n\top1name: " << Op1Name << "\n\tcondition:" << CI->getPredicateName(CI->getPredicate())
                                 << "\n\top2name:" << Op2Name << "\n";
                        }
			//if (BranchInst *BI = dyn_cast<BranchInst>(&I)) {
		      	//      if (BI->isConditional()) {
			//      	errs()<<"Inside Branch Conditional\n";
	              	//      	Value *condition = BI->getCondition();
	              	//      	errs() << "  If Condition: " << *condition << "\n";
	              	//      }
	            	//}
	          	
			else if (auto *SI = dyn_cast<SwitchInst>(&I)) {
	        		// handle switch cases
	        		Value *SwitchValue = SI->getCondition();
	        		Value *Op1 = SI->getOperand(0);
				errs()<<"Switch Op1:"<<*Op1<<"\n";
				StringRef SwitchValueName = SwitchValue->hasName() ? SwitchValue->getName() : "unnamed";
	        		outs() << "Switch Statement:\n\tswitchvalue: " << SwitchValueName << "\n";
	        		//for (auto &Case : SI->cases()) {
				//  ConstantInt *CaseValue = Case.getCaseValue();
	        		//  errs() << "\tCase: " << CaseValue->getSExtValue() << "\n";
	        		//}
				for (SwitchInst::CaseIt i = SI->case_begin(), e = SI->case_end(); i != e; ++i) {
       				   auto *Case = &*i;
       				   ConstantInt *CaseValue = Case->getCaseValue();
       				   BasicBlock *CaseBB = Case->getCaseSuccessor();

       				   outs()<< "\tCase: " << CaseValue->getZExtValue() << ": " << CaseBB->getName() << "\n";
				   outs()<<"\tBB: "<<*CaseBB<<"\n";

				   for (Instruction &I : *CaseBB) {
    					    // If it's a store instruction, print it
    					    if (StoreInst *SI = dyn_cast<StoreInst>(&I)) {
    					        outs() << "\t\tStore Instruction: " << *SI << "\n";
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

