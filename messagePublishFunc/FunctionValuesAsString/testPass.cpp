#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct BasicBlockCounter : public FunctionPass {
        static char ID;
        BasicBlockCounter() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            int count = 0;
	    for (auto &BB : F) {
                count++;
            }
            errs() << "Function " << F.getName() << " has " << count << " basic blocks.\n";
            return false;
        }
    };
}

char BasicBlockCounter::ID = 0;
static RegisterPass<BasicBlockCounter> X("bbcount", "Basic Block Counter Pass");


