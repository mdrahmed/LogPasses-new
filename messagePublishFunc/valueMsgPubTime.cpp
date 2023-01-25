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

      // StringRef getPassName() const override {
      //  return "American Fuzzy Lop Instrumentation";
      // }

  };

}

char CPSTracker::ID = 0;


/*
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
*/



bool CPSTracker::runOnModule(Module &M) {
	
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
	
		
	//Done
		//if(F.getName().contains("subtract")){
		//if(F.getName().contains("llvm.dbg"))
		//	continue;
		//if(F.getName().contains("message_arrived") || F.getName().contains("publish")){
		//errs()<<"Functions: "<<F.getName()<<"\n";
		//if(F.getName().contains("publish")){
		//	errs()<<"publish function found: "<<F.getName()<<"\n";
		//}
		//if(F.getName() == "_ZN2ft23action_listener_publishC1Ev"){
		//This condition is for testbed code & got all functions needed for VGR graph.
		
		if(F.getName().contains("message_arrived") || F.getName()== "_ZN2ft23action_listener_publishC1Ev" ||F.getName().contains("requestOrder") || F.getName().contains("startThread") || F.getName().contains("start_thread") || F.getName().contains("run") || F.getName().contains("fsmStep") || F.getName().contains("printState") || F.getName().contains("setTarget") || F.getName().contains("moveDeliveryInAndGrip") || F.getName().contains("moveNFC") ){
		//if(F.getName().contains("message_arrived") || F.getName().contains("publish") || F.getName().contains("requestOrder") || F.getName().contains("startThread") || F.getName().contains("start_thread") || F.getName().contains("run") || F.getName().contains("fsmStep") || F.getName().contains("printState") || F.getName().contains("setTarget") || F.getName().contains("moveDeliveryInAndGrip") || F.getName().contains("moveNFC") ){
		
		//This for loop will get the user function		
			for(auto ui=F.use_begin();ui!=F.use_end();ui++){
				if(auto I = dyn_cast<Instruction>(ui->getUser())){
					auto *BB = I->getParent();
					Function* userFunction = BB->getParent();
					BasicBlock::iterator IP = BB->getFirstInsertionPt();
					IRBuilder<> builder(&(*IP));
					std::vector<std::string> user;
					std::string format("\n\nUser: ");
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
				auto &BB = F.getEntryBlock();        
				// starting arguments		
				std::vector<std::string> arguments;
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
				IRBuilder<> builder(&(*IP));
				
				// Injecting World time
                       		std::time_t now = std::time(0);
                       		char* dt = ctime(&now);
                       		errs()<<"dt: "<<dt<<"Unix time: "<<now<<"\n";
			
				// date and time
				Value *str = builder.CreateGlobalStringPtr(dt, "str");
                        	std::vector<Value *> worldClock({str});
                        	builder.CreateCall(printfFunc, worldClock, "calltmp");
				
				// Unix time
				//raw_string_ostream rsoT("Time: ");
				std::stringstream ss;
				ss <<"Unix time: "<< now;
				std::string ts = ss.str();
				Value *unixT = builder.CreateGlobalStringPtr(ts, "str");
                                std::vector<Value *> unixTime({unixT});
                                builder.CreateCall(printfFunc, unixTime, "calltmp");

				//Process start time is printed here
                        	auto start = TimeRecord::getCurrentTime(false).getProcessTime();
                        	errs()<<"Process start time:"<< llvm::format("%0.1f", start) << "ms\n";

				{
					//// The format string for the printf function, declared as a global literal
					std::string format("\narguments: ");
					std::string s;
        			        raw_string_ostream rso(s);
					rso << F.getName() << " ";
					arguments.push_back(rso.str());
					for(auto i = F.arg_begin();i!=F.arg_end();++i){
						rso << *i;
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
				// Starting to record values		
				{
				// using the format specifier for printing the values
					std::string format("arg_values: ");
					for (size_t i = 0; i < arg_values.size(); ++i) {
						//format += " %s = %lu\n";
						format += " %s = %d\n";
					}
				// creating the string from format, then converting it into vector
					//StringRef ft = str(format);
					//Value *str = builder.CreateGlobalStringPtr(StringRef(format), "");
					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
					for (auto &v : arg_values) {
					        argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
					        const DataLayout &DL = M.getDataLayout();
					        unsigned SourceBitWidth = DL.getTypeSizeInBits(v->getType());
					        //unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
					        IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
					        Value *IntResult = builder.CreateBitCast(v, IntTy);
					        Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
					        argsV.push_back(Int32Result);
					}
					builder.CreateCall(printfFunc, argsV, "calltmp"); 
				}

				//Process end time is printed here
				auto end = TimeRecord::getCurrentTime(false).getProcessTime();
                                errs()<<"Process end time:"<< llvm::format("%0.1f", end ) << "ms\n";
				auto totalProcessTime = end-start;
				errs()<<"Total process time: "<<llvm::format("%0.1f", totalProcessTime)<<"ms\n";
				
				std::string process("Total Process time:");
				process += std::to_string(totalProcessTime) +"\n";
				Value *processStr = builder.CreateGlobalStringPtr(process, "str");
				std::vector<Value *> processTime({processStr});
                                builder.CreateCall(printfFunc, processTime, "calltmp");
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

