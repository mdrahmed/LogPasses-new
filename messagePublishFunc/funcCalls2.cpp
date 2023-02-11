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


bool AFLCoverage::runOnModule(Module &M) {
	
	LLVMContext &context = M.getContext();
        Type *intType = Type::getInt32Ty(context);

        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
        auto printfFunc = M.getOrInsertFunction("printf", printfType);

         for (auto &F : M){
		//errs()<<F.getName()<<"\n";
		std::vector<std::string> arguments;
		//arguments.push_back(std::string("dummy1"));
		//arguments.push_back(std::string("dummy2"));
		//arguments.push_back(std::string("dummy3"));
		
		
		for (auto &BB : F) {
                        // errs()<<F.getName()<<" "<<BB<<"\n";
                        for(auto &I:BB){
                                //errs()<<"ins: "<<I<<"\n";

                                if(auto *BI = dyn_cast<BranchInst>(&I)){
                                        if (BI->isConditional()) {
                                                //errs()<< "^ is conditional\n";
                                                // visitBB(*BI->getSuccessor(0),NULL);
                                                // visitBB(*BI->getSuccessor(1),NULL);
                                                continue;
                                        } else{
                                                // visitBB(*BI->getSuccessor(0),NULL);
                                                //errs()<< "^ is unconditional\n";
                                                continue;
                                        }
                                } else if(auto *CI = dyn_cast<CallInst>(&I)){
					
					//errs()<<"called function: "<<CI->getCalledFunction()<<"\n";
					if(CI->getCalledFunction() == nullptr){
						errs()<<"Skipping the null called function\n";
						continue;
					}
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
		                                //std::string format("\narguments to %s: \n");
		                                std::string format("\nFunction called: %s\n");
		                                for (auto &&arg : arg_values) {
		                                        format += " * %d\n";
		                                	//format += " %s = (0x%lx)\n";
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
						// Getting 137 error while bitcasting for 32 bit
						//	argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
       						//	const DataLayout &DL = M.getDataLayout();
       						//	unsigned SourceBitWidth = DL.getTypeSizeInBits(v->getType());
       						//	IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
       						//	Value *IntResult = builder.CreateBitCast(v, IntTy);
       						//	Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
       						//	argsV.push_back(Int32Result);
		                                }

		                                builder.CreateCall(printfFunc, argsV, "calltmp");
                                }
                        }
          		// //auto &BB = F.begin();        
	  		// BasicBlock::iterator IP = BB.getFirstInsertionPt();
                        // IRBuilder<> builder(&(*IP));

                        // // The format string for the printf function, declared as a global literal
			// std::string format("\narguments: ");
			// for (size_t i = 0; i < arguments.size(); ++i) {
			// 	format += " %s\n";
			// }
                        // Value *str = builder.CreateGlobalStringPtr(format, "");

                        // std::vector<Value *> argsV({str});

			// for (auto &s : arguments) {
			// 	argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
			// }
                        // builder.CreateCall(printfFunc, argsV, "calltmp");
                }
        }
        return true;


}


static void registerAFLPass(const PassManagerBuilder &,
                            legacy::PassManagerBase &PM) {

  PM.add(new AFLCoverage());

}


static RegisterStandardPasses RegisterAFLPass(
    PassManagerBuilder::EP_ModuleOptimizerEarly, registerAFLPass);


static RegisterPass<AFLCoverage> X("AFLCoverage", "AFLCoverage Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses RegisterAFLPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerAFLPass);

