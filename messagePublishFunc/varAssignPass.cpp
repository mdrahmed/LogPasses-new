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
			for(Instruction &I: BB){
				if (auto* inst = dyn_cast<StoreInst>(&I)) {
          			  if (auto* var = dyn_cast<AllocaInst>(inst->getOperand(1))) {
          			    // Print the instruction and variable name
          			    outs() << "\nAssigning value to variable: " << var->getName() << "\n";
          			    inst->print(outs());
				    outs()<<"\n  Alloc Inst:"<<*var<<"\n";
				    Value *val = inst->getOperand(0);

				    BasicBlock::iterator IP = BB.getFirstInsertionPt();
                                    IRBuilder<> builder(&(*IP));
				    std::vector<std::string> varAssigns;
				    std::string format("\nEvents:");
                                    std::string s;
                                    raw_string_ostream rso(s);
				    rso << "Assigning value to variable: " << var->getName() << "\n";
				    rso << "\tAlloc Inst:"<<*var<<"\n";
			 	    rso << "\tStore Inst:"<<*inst<<"\n";

				    varAssigns.push_back(rso.str());
				    for (size_t i = 0; i < varAssigns.size(); ++i) {
                                            format += " %s\n";
                                    }
                                    Value *str = builder.CreateGlobalStringPtr(format, "");
                                    std::vector<Value *> argsV({str});

                                    for (auto &s : varAssigns) {
                                            argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
                                    }
                                    builder.CreateCall(printfFunc, argsV, "calltmp");


				    //if (val->getType()->isIntegerTy()) {
				    //	Constant *formatStr = ConstantDataArray::getString(context, "Assigning %d to %s\n", true);
          			    //	Value *args[] = { formatStr, val, var };
          			    //	std::vector<Value *> printfArgs(std::begin(args), std::end(args));

          			    //	// Create and insert the call instruction
          			    //	CallInst::Create(printfFunc, printfArgs, "", &I);
				    //}

				    //Value *val = inst->getValueOperand();
             			    //if (val->getType()->isIntegerTy()) {
             			    //  // Integer value
             			    //  std::vector<Value *> printfArgs({ConstantDataArray::getString(context, "%d").getPointer(), val});
             			    //  CallInst::Create(printfFunc, printfArgs, "", &I);
             			    //} 
				    //else if (val->getType()->isFloatTy()) {
             			    //  // Float value
             			    //  std::vector<Value *> printfArgs({ConstantDataArray::getString(context, "%f").get(),val});
             			    //  CallInst::Create(printfFunc, printfArgs, "", &I);
             			    //}
				    //else if (val->getType()->isDoubleTy()) {
             			    //  // Double value
             			    //  std::vector<Value *> printfArgs({ConstantDataArray::getString(context, "%lf").get(),val});
             			    //  CallInst::Create(printfFunc, printfArgs, "", &I);
             			    //} 
				    //else {
             			    //  errs() << "Different variable type\n";
             			    //}
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


static RegisterPass<CPSTracker> X("cpstracker", "CPSTracker Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses RegisterCPSPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerCPSPass);

