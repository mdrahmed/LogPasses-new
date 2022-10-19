// This will create pass to get function names with arguments and values
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

        //IRBuilder<> builder(CallInst);
        Type *intType = Type::getInt32Ty(context);



        // Declare C standard library printf
        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
        auto printfFunc = M.getOrInsertFunction("printf", printfType);

         for (auto &F : M){
		errs()<<F.getName()<<"\n";
		std::vector<std::string> arguments;
		//arguments.push_back(std::string("dummy1"));
		//arguments.push_back(std::string("dummy2"));
		//arguments.push_back(std::string("dummy3"));
		
                //if(F.isVarArg()){
		//Value *arguments;
		std::string s;
                raw_string_ostream rso(s);
		rso << F.getName() << " ";
		arguments.push_back(rso.str());
			for(auto i = F.arg_begin();i!=F.arg_end();++i){
				errs()<<"\narguments: "<<*i<<"\n";
				//std::string s;
				//raw_string_ostream rso(s);
				rso << *i<<"\n";
				arguments.push_back(rso.str());
			}
		//}
		
		for (auto &BB : F) {
          	// For arguments
			//auto &BB = F.begin();        
	  		BasicBlock::iterator IP = BB.getFirstInsertionPt();
                        IRBuilder<> builder(&(*IP));
			// getting the arguments
                        // The format string for the printf function, declared as a global literal
			std::string format("\narguments: ");
			for (size_t i = 0; i < arguments.size(); ++i) {
				format += " %s\n";
			}
                        Value *str = builder.CreateGlobalStringPtr(format, "");

                        std::vector<Value *> argsV({str});

			for (auto &s : arguments) {
				argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
			}
                        builder.CreateCall(printfFunc, argsV, "calltmp");
			
		// For values
		//	std::vector<std::string> arg_strings;
		//	{
                //                // The format string for the printf function, declared as a global literal
                //                std::string format("\narg_strings: ");
                //                for (size_t i = 0; i < arg_strings.size(); ++i) {
                //                        format += " %s\n";
                //                }
  
                //                Value *str = builder.CreateGlobalStringPtr(format, "");
                //                std::vector<Value *> argsV({str});
  
                //                for (auto &s : arg_strings) {
                //                        argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
                //                }
                //                builder.CreateCall(printfFunc, argsV, "calltmp");
                //        }
                //       	std::vector<Value*> arg_values; 
                //        {
                //                std::string format("\narg_values: ");
                //                for (size_t i = 0; i < arg_values.size(); ++i) {
                //                        format += " %s = (0x%lx)\n";
                //                }
  
                //                Value *str = builder.CreateGlobalStringPtr(format, "");
                //                std::vector<Value *> argsV({str});
  
                //                for (auto &v : arg_values) {
                //                        argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
                //                        argsV.push_back(v);
                //                }
                //                builder.CreateCall(printfFunc, argsV, "calltmp");
                //        }


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

static RegisterStandardPasses RegisterAFLPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerAFLPass);
