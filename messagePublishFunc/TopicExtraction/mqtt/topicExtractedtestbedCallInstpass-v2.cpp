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
		bool isFunc = true;
		if(F.getName().contains("message_arrived")){
		for (BasicBlock &BB : F) {
			bool ifCallInst = false;
			bool ifTruncInst = false;
			
			for(Instruction &I: BB){
				//BasicBlock::iterator IP = BB.getFirstInsertionPt();
                        	IRBuilder<> builder(&I);
				if(auto *callInst = dyn_cast<CallInst>(&I)) {
					//outs()<<"Conditional branch with call inst in this BB: "<<BB<<"\n";
					//outs() << "Found call instruction in function " << F.getName() << ":\n";
					Function *calledFunction = callInst->getCalledFunction();
					//outs()<<"Found callInst:"<<*callInst<<"\n";
					if(calledFunction){
						if(calledFunction->getName().contains("get_topic")){
							outs()<<"get_topic operand(0)"<< *callInst->getOperand(0)<<"\n";
							//outs()<<"get_topic:"<<calledFunction->getName()<<"\n";
							if (callInst == BB.getTerminator()) {
							    builder.SetInsertPoint(&BB, ++BB.end());
							} else {
							    builder.SetInsertPoint(&BB, ++I.getIterator());
							}

							llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
                                                        //outs()<<"c_str(): "<< *c_str<<"\n";
							Value *topicStr = builder.CreateCall(c_str, callInst);
                                                        //argsV.push_back(topicStr);

							std::string formatValue("get_topic value: ");
							formatValue += " %s\n";
							Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
							std::vector<Value *> argsValue({value});
							//argsValue.push_back(value);
							argsValue.push_back(topicStr);
							builder.CreateCall(printfFunc, argsValue, "value");
							//break;
							

							// EXTRACTING MSG FROM MESSAGE_ARRIVED
							Value * mqtt7message = callInst->getOperand(0);
							llvm::Function* to_string = F.getParent()->getFunction("_ZNK4mqtt7message9to_stringB5cxx11Ev");
							if(to_string){
                                                        	outs()<<"to_string(): "<< *to_string<<"\n";

								//Type* strTy = Type::getInt8Ty(context)->getPointerTo();
								//AllocaInst* str1 = builder.CreateAlloca(strTy, nullptr, "str");

                                                        	Value *msg = builder.CreateCall(to_string, mqtt7message, "returnValue");
								outs()<<"msg value:"<<*msg<<"\n";
								Value* str1 = builder.CreateGlobalStringPtr("msg: %s\n", "str");
								//builder.CreateStore(msg, str1);
								//builder.CreateStore(builder.CreateBitCast(msg, strTy), str1);
                                                        	//argsV.push_back(topicStr);
								std::vector<Value*> argsValu({str1, msg});

                                                        	//std::string formatValu("msg: ");
                                                        	//formatValu += " %s\n";
                                                        	//Value *valu = builder.CreateGlobalStringPtr(formatValu, "value");
                                                        	//std::vector<Value *> argsValu({valu});
                                                        	////argsValue.push_back(builder.CreateLoad(str1->getType()->getElementType(), str1, "str1"));

                                                        	//argsValu.push_back(str1);
								//argsValu.push_back(builder.CreateLoad(str1));

                                                        	builder.CreateCall(printfFunc, argsValu, "value");
							}
						}
						//if(calledFunction->getName().contains("c_str")){
						//	//outs()<<"c_str CallInst:"<< *callInst<<"\n";
						//	//outs()<<"c_str:"<<calledFunction->getName()<<"\n";
						//	if (callInst == BB.getTerminator()) {
						//	    builder.SetInsertPoint(&BB, ++BB.end());
						//	} else {
						//	    builder.SetInsertPoint(&BB, ++I.getIterator());
						//	}

						//	std::string formatValue("get_topic.c_str() value: ");
						//	formatValue += " %s\n";
						//	Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
						//	std::vector<Value *> argsValue({value});
						//	//argsValue.push_back(value);
						//	argsValue.push_back(callInst);
						//	builder.CreateCall(printfFunc, argsValue, "value");

						//}
					}

					//if (calledFunction && calledFunction->getName() != "printf") {
					////if (calledFunction->getName().contains("get_topic") && calledFunction->getName() != "printf") {
					//	//StringRef functionName = calledFunction->getName();
					//	//outs()<<"CallInst inst:"<< *callInst<<"\n";
					//	//if(calledFunction->getName().contains("get_topic"))
					//		outs()<<"Called function: "<<calledFunction->getName() <<"\n";
          				//	//outs() << "Found call instruction in function " << F.getName() << ":\n";
          				//	//callInst->print(outs());
					//	if(!callInst->getType()->isVoidTy()) {
					//		//outs()<<"CallInst inst:"<< *callInst<<"\n";
          				//		//outs() << "This function returns a value of type " << *(callInst->getType()) << "\n";
					//		//auto *loadInst = new LoadInst(callInst, "", false, &I);
					//		if (callInst == BB.getTerminator()) {
					//		    builder.SetInsertPoint(&BB, ++BB.end());
					//		} else {
					//		    builder.SetInsertPoint(&BB, ++I.getIterator());
					//		}
					//		std::string formatCallInst("Calling: ");
                                	//		formatCallInst += "%s %s ";
                                	//		//formatCallInst += " value %s\n";
					//		Value *str = builder.CreateGlobalStringPtr(formatCallInst, "str");
					//		//// This part will add only the value
                        		//		std::vector<Value *> argsV({str});
					//		//argsV.push_back(callInst);
					//		argsV.push_back( builder.CreateGlobalStringPtr(F.getName()) );
					//		argsV.push_back( builder.CreateGlobalStringPtr(calledFunction->getName()) );
					//		builder.CreateCall(printfFunc, argsV, "calltmp");
					//		outs()<<"CallInst type: "<<*callInst->getType()<<"\n";
					//		break;

					//		//std::string formatValue(" Value: ");
					//		//formatValue += " %s\n";
					//		//Value *value = builder.CreateGlobalStringPtr(formatValue, "value");
					//		//std::vector<Value *> argsValue({value});
					//		////argsValue.push_back(value);
					//		//argsValue.push_back(callInst);
					//		//builder.CreateCall(printfFunc, argsValue, "value");

					//		//// ADDING THE CALLINST VALUES HERE - AFTER CASTING IT TO INT
					//		//std::string intV("callInst_values: ");
                                	//		////for (size_t i = 0; i < arg_values.size(); ++i) {
                                	//		//intV += "%d\n";
                                	//		////}
                                	//		//Value *intVal = builder.CreateGlobalStringPtr(intV, "");
                                	//		//std::vector<Value *> callV({intVal});
                                	//		//// If I simply push the values then it works fine but I have to get values for arm-32 bit.
                                	//		//// That's why I am bitcasting the values to a 32-bit result and then pushing it. But only this part is causing the error.
                                	//		//// Worked with 32 bit int and then all values except pointer and array worked
                                	//		////for (auto &v : arg_values) {
					//		//const DataLayout &DL = M.getDataLayout();
                                	//		//unsigned SourceBitWidth = DL.getTypeSizeInBits(callInst->getType());
                                	//		////unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
                                	//		//IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
                                	//		////Value *IntResult = builder.CreateBitCast(v, IntTy);
                                	//		//Value *IntResult;
                                	//		//if(callInst->getType()->isArrayTy()){
                                	//		//        continue;
                                	//		//}
                                	//		//if(callInst->getType()->isPointerTy()){
                                	//		//        IntResult = builder.CreatePtrToInt(callInst, IntTy);
                                	//		//        //llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
                                	//		//        //callV.push_back(loadedValue);
                                	//		//        //continue;
                                	//		//}
                                	//		//else{
                                	//		//        IntResult = builder.CreateBitCast(callInst, IntTy);
                                	//		//}
                                	//		//Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
                                	//		////llvm_unreachable("Invalid type for cast");
                                	//		//callV.push_back(Int32Result);
                                	//		//builder.CreateCall(printfFunc, callV, "calltmp");
					//	}
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


static RegisterPass<CPSTracker> X("CPSTracker", "CPSTracker Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses RegisterCPSPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerCPSPass);

