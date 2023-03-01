#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
class FSMTransitionPass : public ModulePass {
public:
  static char ID;
  FSMTransitionPass() : ModulePass(ID) {}

  virtual bool runOnModule(Module &M) {
    // Get the printf function from the module
    LLVMContext &ctx = M.getContext();
    //Constant *printfFunc = M.getOrInsertFunction("printf",
    //                                             FunctionType::get(IntegerType::getInt32Ty(ctx),
    //                                                               PointerType::getUnqual(Type::getInt8Ty(ctx)),
    //                                                               true));
    //errs()<<M<<"\n";
    Type *intType = Type::getInt32Ty(ctx);
    std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(ctx)});
    FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
    auto printfFunc = M.getOrInsertFunction("printf", printfType);
    // Loop over all functions in the module
    for (Function &F : M) {
      // Loop over all instructions in the function
      errs()<<F<<"\n";
      for (BasicBlock &BB : F) {
	      errs()<<"Basic Block: "<<BB<<"\n";
        for (Instruction &I : BB) {
		errs()<<"Instruction: "<<I<<"\n";
		// Look for a call to FSM_TRANSITION
		if (CallInst *CI = dyn_cast<CallInst>(&I)) {
		  Function *calledFunc = CI->getCalledFunction();
		  if (calledFunc && calledFunc->getName().contains("fsm")) {
		    	// Replace the call to std::cerr with a call to printf
		    	errs()<<"FSM_TRANSITION found: "<<calledFunc->getName()<<"\n";
			Value *newState = CI->getArgOperand(0);
		    	Constant *newStateInt = ConstantInt::get(Type::getInt32Ty(ctx), cast<ConstantInt>(newState)->getZExtValue());
		   	std::vector<Value *> printfArgs;
		   	std::vector<std::string> fsmState;
		   	//printfArgs.push_back("FSM State");
		   	printfArgs.push_back(ConstantExpr::getCast(Instruction::BitCast, newStateInt, PointerType::getUnqual(Type::getInt8Ty(ctx))));
		   	CallInst *printfCall = CallInst::Create(printfFunc, printfArgs, "", CI);
		   	printfCall->setTailCall(false);	
		   	// Insert the printf statement before the call to std::cerr
		   	CI->moveBefore(printfCall);
		  }
		}

        }
      }
    }

    return true;
  }
};

//char FSMTransitionPass::ID = 0;
////static RegisterPass<FSMTransitionPass> X("fsmtransition", "FSM transition pass", false, false);
//
//static RegisterPass<FSMTransitionPass> X(
//    /* PassArg      */ "fsmtransition",
//    /* Name         */ "FSM transition pass",
//    /* OptToSink    */ false,
//    /* CFGOnly      */ false
//);
}


static void registerFSMTransitionPass(const PassManagerBuilder &,
                            legacy::PassManagerBase &PM) {

  PM.add(new FSMTransition());

}


static RegisterStandardPasses RegisterCPSPass(
    PassManagerBuilder::EP_ModuleOptimizerEarly, registerFSMTransitionPass);


static RegisterPass<FSMTransition> X("FSMTransition", "FSMTransition Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses RegisterFSMTransitionPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerFSMTransitionPass);


