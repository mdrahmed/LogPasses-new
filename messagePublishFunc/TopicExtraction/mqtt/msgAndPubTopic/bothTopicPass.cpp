// trying to get topic from publish

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

	//// c_str function
	//// Obtain the necessary types and context
	//Type* int8PtrType = Type::getInt8PtrTy(context);
	//StructType* stringType = StructType::create(context, "class.std::__cxx11::basic_string");
	//
	//// Create the function type
	//Type* stringPtrType = stringType->getPointerTo();
	//FunctionType* cStrFunctionType = FunctionType::get(int8PtrType, { stringPtrType }, false);
	//auto cStrFunction = M.getOrInsertFunction("c_str", cStrFunctionType);

	for (auto &F:M){
		std::vector<std::string> arg_strings;
		std::vector<Value*> arg_values; // used to store functions argument values
		std::string s;
    raw_string_ostream rso(s);
		rso << F.getName() << " ";
		arg_strings.push_back(rso.str());
		// Marking how many values a function has 
		for(auto i = F.arg_begin();i!=F.arg_end();++i){
			rso << *i <<"\n";
			arg_strings.push_back(rso.str());
			arg_values.push_back(i);
		}
		if(F.getName().contains("publish") || F.getName().contains("main") || F.getName().contains("message_arrived")){
			outs()<<"publish found\n";
			// If a function is declared then it will not have basic blocks in them. So, if a function is not delcared then it will have basic block, which I need to insert printf
			if(!F.isDeclaration()){
				for (BasicBlock &BB : F) {
					for(Instruction &I: BB){
						IRBuilder<> builder(&I);
						// publish get_topic
						if(auto *callInst = dyn_cast<InvokeInst>(&I)) {
							llvm::Value* calledValue = callInst->getCalledOperand();
							if (llvm::isa<llvm::Function>(calledValue)) {
								Function *calledFunction = callInst->getCalledFunction();
								if (calledFunction && calledFunction->getName().contains("make_message")) {
									outs()<<"Invoked function: "<<calledFunction->getName()<<"\n";
									outs()<<"Invoke inst: "<<*callInst<<"\n";
									if (callInst == BB.getTerminator()) {
									    builder.SetInsertPoint(&BB, ++BB.end());
									} else {
									    builder.SetInsertPoint(&BB, ++I.getIterator());
									}
									llvm::Value* secondParam = callInst->getArgOperand(1);
									outs()<<"2nd parameter: "<<*secondParam<<"\n";
									outs()<<"param type: "<<*secondParam->getType()<<"\n";
									llvm::Value* loadedValue = builder.CreateLoad(secondParam->getType()->getPointerElementType(), secondParam);
									//llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
									llvm::Function* c_str = F.getParent()->getFunction("_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv");
									//llvm::Function* c_str = F.getParent()->getFunction("c_str");
                                                        		outs()<<"c_str(): "<< *c_str<<"\n";
									// secondParam is not giving any error
									//Value *topicStr = builder.CreateCall(c_str, secondParam); // Whenever I am passing the callInst then it is giving error 
									Value *topicStr = builder.CreateCall(c_str, loadedValue); // Whenever I am passing the callInst then it is giving error 
									std::string formatValue("publish get_topic value: ");
									formatValue += " %s\n";
									Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
									std::vector<Value *> argsValue({value});
									//argsValue.push_back(loadedValue);
									argsValue.push_back(topicStr);
									builder.CreateCall(printfFunc, argsValue, "value");
									//break;
								}
							}
						}
						// Message_arrived topic
						if(auto *callInst = dyn_cast<CallInst>(&I)) {
							Function *calledFunction = callInst->getCalledFunction();
								if(calledFunction){
									if(calledFunction->getName().contains("get_topic")){
									  outs()<<"get_topic CallInst:"<< *callInst<<"\n";
									  outs()<<"get_topic:"<<calledFunction->getName()<<"\n";
									  if (callInst == BB.getTerminator()) {
									      builder.SetInsertPoint(&BB, ++BB.end());
									  } else {
									      builder.SetInsertPoint(&BB, ++I.getIterator());
									  }
									
									  //llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
									  //Following function will work in the testbed code as they have this function defined.
									  llvm::Function* c_str = F.getParent()->getFunction("_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv");
									                                            outs()<<"c_str(): "<< *c_str<<"\n";
									  Value *topicStr = builder.CreateCall(c_str, callInst);
									                                            //argsV.push_back(topicStr);
									
									  std::string formatValue("message_arrived get_topic value: ");
									  formatValue += " %s\n";
									  Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
									  std::vector<Value *> argsValue({value});
									  //argsValue.push_back(value);
									  argsValue.push_back(topicStr);
									  builder.CreateCall(printfFunc, argsValue, "value");
									  //break;
									}
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

