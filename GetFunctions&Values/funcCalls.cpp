#include <cstddef>
#include <unordered_set>
#include <unordered_map>
#include <sstream>
#include <vector>

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
//#include "basic_log.h"
//#include "hello.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"


using namespace llvm;

namespace {

  class AFLCoverage : public ModulePass {

    public:

      static char ID;
      AFLCoverage() : ModulePass(ID) { }

      bool runOnModule(Module &M) override;

      // StringRef getPassName() const override {
      //  return "American Fuzzy Lop Instrumentation";
      // }

  };

}

char AFLCoverage::ID = 0;

std::unordered_set<BasicBlock*> visited_bbs;

void visitBB(BasicBlock &BB, Value* condition){
	//auto *bbss = BB.getSingleSuccessor();
	//errs()<<"got successor: "<<bbss<<"\n";
	//
	if (visited_bbs.find(&BB) != visited_bbs.end()) {
		errs() << "already visited\n";
		return;
	}

	visited_bbs.insert(&BB);
	LLVMContext &context = BB.getContext();
	Type *intType = Type::getInt32Ty(context);
        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
	auto *M = BB.getModule();
        auto printfFunc = M->getOrInsertFunction("printf", printfType);

	for(auto &&I:BB){
		errs()<<I<<"\n";

		if(auto *BI = dyn_cast<BranchInst>(&I)){
			if (BI->isConditional()) {
				errs()<< "^ is conditional\n";
				visitBB(*BI->getSuccessor(0),NULL);
				visitBB(*BI->getSuccessor(1),NULL);
			} else{
				visitBB(*BI->getSuccessor(0),NULL);
				errs()<< "^ is unconditional\n";
			}
		} else if(auto *CI = dyn_cast<CallInst>(&I)){

			if (CI->getCalledFunction()->getName().startswith("llvm.dbg")) {
				errs() << "skipping llvm internal function\n";
				continue;
			}

			std::vector<Value*> arg_values;

                        for(auto i = CI->arg_begin();i!=CI->arg_end();++i){
                                arg_values.push_back(*i);
                        }

			// BasicBlock::iterator IP = BB.getFirstInsertionPt();
                        IRBuilder<> builder(&(*CI));
  
                        // The format string for the printf function, declared as a global literal
                        std::string format("arguments to %s: \n");
			for (auto &&arg : arg_values) {
                                format += " * %lu\n";
                        }
                        Value *str = builder.CreateGlobalStringPtr(format, "");
  
                        std::vector<Value *> argsV({str});

			// print the function name
                  	std::string s;
                  	raw_string_ostream rso(s);
			rso << CI->getCalledFunction()->getName() << " ";
                  	argsV.push_back(builder.CreateGlobalStringPtr(rso.str(), ""));
  
			// print the argument values
                        for (auto &v : arg_values) {
                                argsV.push_back(v);
                        }

                        builder.CreateCall(printfFunc, argsV, "calltmp");
		}
	}
}



bool AFLCoverage::runOnModule(Module &M) {
	
	LLVMContext &context = M.getContext();

        //IRBuilder<> builder(CallInst);
        Type *intType = Type::getInt32Ty(context);
        // Declare C standard library printf
        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
        auto printfFunc = M.getOrInsertFunction("printf", printfType);

	auto *f = M.getFunction("main");
	auto &enbb = f->getEntryBlock();
	//errs()<<enbb<<"\n";

	auto *succssor = enbb.getSingleSuccessor();
	//errs()<<succssor<<"\n";

	visitBB(enbb,NULL);
	

       // for (auto &F : M){
       // 	errs()<<F.getName()<<"\n";
       // 	auto &BB = F.getEntryBlock();
       // 	errs()<<"entry block: "<<BB<<"\n";
       // 	visitBB(BB,NULL);
       // 	break;
       // 	//std::vector<std::string> arguments;
       // 	////arguments.push_back(std::string("dummy1"));
       // 	////arguments.push_back(std::string("dummy2"));
       // 	////arguments.push_back(std::string("dummy3"));
       // 	//
       //         ////if(F.isVarArg()){
       // 	////Value *argument
       // 	//std::string s;
       //         //raw_string_ostream rso(s);
       // 	//rso << F.getName() << " ";
       // 	//arguments.push_back(rso.str());
       // 	//	for(auto i = F.arg_begin();i!=F.arg_end();++i){
       // 	//		//errs()<<"\narguments: "<<*i<<"\n";
       // 	//		//std::string s;
       // 	//		//raw_string_ostream rso(s);
       // 	//		rso << *i<<"\n";
       // 	//		arguments.push_back(rso.str());
       // 	//	}
       // 	////}
       // 	//
       // 	//for (auto &BB : F) {
       //   	//	//auto &BB = F.begin();        
       //   	//	BasicBlock::iterator IP = BB.getFirstInsertionPt();
       //         //        IRBuilder<> builder(&(*IP));

       //         //        // The format string for the printf function, declared as a global literal
       // 	//	std::string format("\narguments: ");
       // 	//	for (size_t i = 0; i < arguments.size(); ++i) {
       // 	//		format += " %s\n";
       // 	//	}
       //         //        Value *str = builder.CreateGlobalStringPtr(format, "");

       //         //        std::vector<Value *> argsV({str});

       // 	//	for (auto &s : arguments) {
       // 	//		argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
       // 	//	}
       //         //        builder.CreateCall(printfFunc, argsV, "calltmp");
       //         //}
       // }
        return true;
}

static void registerAFLPass(const PassManagerBuilder &,
                            legacy::PassManagerBase &PM) {

  PM.add(new AFLCoverage());

}


static RegisterStandardPasses RegisterAFLPass(
    PassManagerBuilder::EP_ModuleOptimizerEarly, registerAFLPass);

static RegisterStandardPasses RegisterAFLPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerAFLPass);
