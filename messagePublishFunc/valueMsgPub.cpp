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
                        std::string format("\narguments to %s: \n");
                        for (auto &&arg : arg_values) {
                                format += " * %lu\n";
				//errs()<<format<<"\n";
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
        Type *intType = Type::getInt32Ty(context);

        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
        auto printfFunc = M.getOrInsertFunction("printf", printfType);

	//Function* msg = M.getFunction("_ZN8callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE");
	
	//Function* msg = M.getFunction("_ZN8callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE");
	//errs()<<*msg<<"\n";
	for (auto &F:M){
		std::vector<std::string> arg_strings;
		std::vector<Value*> arg_values;
		std::string s;
                raw_string_ostream rso(s);
		rso << F.getName() << " ";
		arg_strings.push_back(rso.str());
		for(auto i = F.arg_begin();i!=F.arg_end();++i){
			//errs()<<"\narg_strings: "<<*i<< ", name = " << i->getName() <<"\n";
			//std::string s;
			//raw_string_ostream rso(s);
			rso << *i <<"\n";
			arg_strings.push_back(rso.str());
			arg_values.push_back(i);
		}
	
	//edits to inject print before the function call	
	//	unsigned vid = F.getValueID();
	//	errs()<<"vid: "<<vid<<"\n";

	//	ValueName* vName = F.getValueName();
	//	errs()<<"Value Name: "<<vName<<"\n";
	//	errs()<<"Value Name: "<<*vName<<"\n";
	//	
	//	errs()<<"Name: "<<vid.getName()<<"\n";
		//errs()<<"Basic Block: "<<vName->isUsedInBasicBlock()<<"\n";
		
	//Done
		//if(F.getName().contains("subtract")){
		//if(F.getName().contains("llvm.dbg"))
		//	continue;
		//if(F.getName().contains("message_arrived") || F.getName().contains("publish")){
		//errs()<<"Functions: "<<F.getName()<<"\n";
		//if(F.getName().contains("publish")){
		//	errs()<<"publish function found: "<<F.getName()<<"\n";
		//}
		
		//This condition is for testbed code
		if(F.getName().contains("message_arrived") || F.getName().contains("publish") || F.getName().contains("requestOrder")){
		
		//if(F.getName().contains("message_arrived") || F.getName().contains("_ZN2ft20TxtMqttFactoryClient14publishSLD_AckENS_15TxtSldAckCode_tENS_11TxtWPType_tEil")){
		//if(F.getName().contains("message_arrived")){
			//errs()<<"found:"<<F.getName()<<"\n";
			//Function* msg = &F;
			//errs()<<"After declaring msg\n";
			//if(msg != nullptr && F.isDeclaration()==false){
			
			for(auto ui=F.use_begin();ui!=F.use_end();ui++){
				errs()<<F.getName()<<" is called from this callInst: "<<*ui->getUser()<<"\n";
				//errs()<<"Parent: "<<ui->getUser()->getParent()<<"\n";
				//Instruction *I = *ui->getUser();
				if(auto I = dyn_cast<Instruction>(ui->getUser())){
					errs()<<"Instruction: "<<*I<<"\n";
					errs()<<"Instruction Parent: "<<*I->getParent()<<"\n";
					auto *BB = I->getParent();
					Function* userFunction = BB->getParent();
					//errs()<<"User function: "<<*BB->getParent()<<"\n";
					
					errs()<<"User Function: "<<userFunction->getName()<<"\n";
					BasicBlock::iterator IP = BB->getFirstInsertionPt();
					errs()<<"first inst pointer: "<<*IP<<"\n";
					IRBuilder<> builder(&(*IP));
					
					std::vector<std::string> user;
					std::string format("\nUser: ");
					std::string s;
					raw_string_ostream rso(s);
					rso << userFunction->getName()<<" is calling "<<F.getName()<<"\n";
					rso << F.getName() << " is called from this callInst"<<*ui->getUser()<<"\n";
					user.push_back(rso.str());

					for (size_t i = 0; i < user.size(); ++i) {
						format += " %s\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
		
					std::vector<Value *> argsV({str});
		
					for (auto &s : user) {
						argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
					}
					builder.CreateCall(printfFunc, argsV, "calltmp");				
				}
			}
			
			if(!F.isDeclaration()){
				//errs()<<"checking if it's nullptr:"<<*msg<<"\n";
				//errs()<<"Skipping the null called function\n";
				//continue;
			
				//if(msg->getEntryBlock() != ""){
				auto &BB = F.getEntryBlock();        
				//errs()<<"got entry block: "<<BB<<"\n";
				//visitBB(BB,NULL);

// starting arguments		
					
				std::vector<std::string> arguments;
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
				IRBuilder<> builder(&(*IP));
				{
					//// The format string for the printf function, declared as a global literal
					std::string format("\narguments: ");
					std::string s;
        			        raw_string_ostream rso(s);
					rso << F.getName() << " ";
					//errs()<<"rso.str():"<<rso.str()<<"\n";
					arguments.push_back(rso.str());
					for(auto i = F.arg_begin();i!=F.arg_end();++i){
						//errs()<<"\narguments: "<<*i<<"\n";
						//std::string s;
						//raw_string_ostream rso(s);
						rso << *i;
						//errs()<<"*i: "<<*i<<"\n";
						arguments.push_back(rso.str());
					}
					for (size_t i = 0; i < arguments.size(); ++i) {
						format += " %s\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
		
					std::vector<Value *> argsV({str});
		
					for (auto &s : arguments) {
						argsV.push_back(builder.CreateGlobalStringPtr(s, ""));
					}
					builder.CreateCall(printfFunc, argsV, "calltmp");				
				}
// till now arguments		
				
				{
					std::string format("arg_values: ");
					for (size_t i = 0; i < arg_values.size(); ++i) {
						format += " %s = %lu\n";
					}

					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});

					for (auto &v : arg_values) {
						argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
						argsV.push_back(v);
					}
					builder.CreateCall(printfFunc, argsV, "calltmp");
				}

				//for(auto &I:BB){
				//	errs()<<"Instruction: "<<I<<"\n";
				//	if(auto *BI=dyn_cast<BranchInst>(&I)){
				//		if(BI->isConditional()){
				//			errs()<<"^ is conditional\n";
				//		}else{
				//			errs()<<"^ is unconditional\n";
				//		}
				//	}else if(auto *CI=dyn_cast<CallInst>(&I)){
				//		if(CI->getCalledFunction()->getName().startswith("llvm.dbg")){
				//			continue;
				//		}
				//		errs()<<"Call inst\n";
				//		std::vector<Value*>arg_values;
				//		for(auto i=CI->arg_begin();i!=CI->arg_end();++i){
				//			arg_values.push_back(*i);
				//		}
				//		IRBuilder<>builder(&(*CI));
				//		std::string format("\nArguments to %s: \n");
				//		for(auto &&arg:arg_values){
				//			format += "* %lu\n";
				//		}
				//	
				//		Value *str=builder.CreateGlobalStringPtr(format,"");
				//		std::vector<Value*>argsV({str});
				//		std::string s;
				//		raw_string_ostream rso(s);
				//		rso<<CI->getCalledFunction()->getName()<<" ";
				//		argsV.push_back(builder.CreateGlobalStringPtr(rso.str(),""));
				//		for(auto &v:arg_values){
				//			argsV.push_back(v);
				//		}
				//		builder.CreateCall(printfFunc,argsV,"calltmp");
				//	}

				//}
				
			}
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

