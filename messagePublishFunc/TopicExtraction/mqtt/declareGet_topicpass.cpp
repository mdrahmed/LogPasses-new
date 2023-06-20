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

//declare_get_topic(context)

bool CPSTracker::runOnModule(Module &M) {
	
	LLVMContext &context = M.getContext();
        // Defining the printf function
	Type *intType = Type::getInt32Ty(context);
        std::vector<Type *> printfArgsTypes({Type::getInt8PtrTy(context)});
        FunctionType *printfType = FunctionType::get(intType, printfArgsTypes, true);
        auto printfFunc = M.getOrInsertFunction("printf", printfType);
	
	//declare_get_topic(context);

	// Declare get_topic()
    	Type *voidType = Type::getVoidTy(context);
    	Type *stringType = Type::getInt8PtrTy(context);

    	// Create function type
    	std::vector<Type *> paramTypes;
    	FunctionType *functionType = FunctionType::get(stringType, paramTypes, false);

    	// Create function declaration
    	Function *getTopicFunc = Function::Create(functionType, Function::ExternalLinkage, "get_topic", &M);

    	// Create basic block
    	BasicBlock *entryBlock = BasicBlock::Create(context, "entry", getTopicFunc);

    	// Create instructions
    	Constant *emptyStr = ConstantDataArray::getString(context, "");
    	GlobalVariable *emptyStrVar = new GlobalVariable(M, emptyStr->getType(), true,
    	                                                GlobalValue::PrivateLinkage, emptyStr, ".empty_str");

    	AllocaInst *topicPtr = new AllocaInst(stringType, 0, "topic_ptr", entryBlock);
    	LoadInst *topicLoad = new LoadInst(stringType, topicPtr, "topic_load", entryBlock);
    	ICmpInst *topicIsNull = new ICmpInst(*entryBlock, ICmpInst::ICMP_EQ, topicLoad,
    	                                     ConstantPointerNull::get(cast<PointerType>(stringType)));

    	BasicBlock *thenBlock = BasicBlock::Create(context, "then", getTopicFunc);
    	BasicBlock *elseBlock = BasicBlock::Create(context, "else", getTopicFunc);
    	BasicBlock *mergeBlock = BasicBlock::Create(context, "merge", getTopicFunc);

    	// Branch to the appropriate block based on the topic_ value
    	BranchInst::Create(thenBlock, elseBlock, topicIsNull, entryBlock);

    	// Block for the case when topic_ is not null
    	// Return topic_.str()
    	Constant *strFuncName = ConstantDataArray::getString(context, "str");
    	GlobalVariable *strFuncVar = new GlobalVariable(M, strFuncName->getType(), true,
    	                                                GlobalValue::PrivateLinkage, strFuncName, ".str_func");

    	Constant *strFuncPtr = ConstantExpr::getBitCast(strFuncVar, stringType->getPointerTo());
    	FunctionCallee strFuncCallee = getTopicFunc->getParent()->getOrInsertFunction("str", stringType);
    	CallInst *strFuncCall = CallInst::Create(strFuncCallee, "", thenBlock);

    	ReturnInst::Create(context, strFuncCall, thenBlock);

    	// Block for the case when topic_ is null
    	// Return empty_str
    	LoadInst *emptyStrLoad = new LoadInst(stringType, emptyStrVar, "empty_str_load", elseBlock);
    	ReturnInst::Create(context, emptyStrLoad, elseBlock);

    	// Set the insertion point to the merge block
    	IRBuilder<> builder(mergeBlock);
    	builder.CreateRetVoid();

    	// Print the LLVM IR
    	M.print(outs(), nullptr);

    	//// Declare get_topic()
    	//Type *voidType = Type::getVoidTy(context);
    	//Type *stringType = Type::getInt8PtrTy(context);

    	//// Create function type
    	//std::vector<Type *> paramTypes;
    	//FunctionType *functionType = FunctionType::get(stringType, paramTypes, false);

    	//// Create function declaration
    	//Function *getTopicFunc = Function::Create(functionType, Function::ExternalLinkage, "get_topic", &M);

    	//// Create basic block
    	//BasicBlock *entryBlock = BasicBlock::Create(context, "entry", getTopicFunc);

    	//// Create instructions
    	//Constant *emptyStr = ConstantDataArray::getString(context, "");
    	//GlobalVariable *emptyStrVar = new GlobalVariable(M, emptyStr->getType(), true,
    	//                                                GlobalValue::PrivateLinkage, emptyStr, ".empty_str");

    	//AllocaInst *topicPtr = new AllocaInst(stringType, 0, "topic_ptr", entryBlock);
    	//LoadInst *topicLoad = new LoadInst(stringType, topicPtr, "topic_load", entryBlock);
    	//ICmpInst *topicIsNull = new ICmpInst(*entryBlock, ICmpInst::ICMP_EQ, topicLoad,
    	//                                     ConstantPointerNull::get(cast<PointerType>(stringType)));

    	//BasicBlock *thenBlock = BasicBlock::Create(context, "then", getTopicFunc);
    	//BasicBlock *elseBlock = BasicBlock::Create(context, "else", getTopicFunc);
    	//BasicBlock *mergeBlock = BasicBlock::Create(context, "merge", getTopicFunc);

    	//// Branch to the appropriate block based on the topic_ value
    	//BranchInst::Create(thenBlock, elseBlock, topicIsNull, entryBlock);

    	//// Block for the case when topic_ is not null
    	//// Return topic_.str()
    	//Constant *strFuncName = ConstantDataArray::getString(context, "str");
    	//GlobalVariable *strFuncVar = new GlobalVariable(M, strFuncName->getType(), true,
    	//                                                GlobalValue::PrivateLinkage, strFuncName, ".str_func");

    	//Constant *strFuncPtr = ConstantExpr::getBitCast(strFuncVar, stringType);
    	//CallInst *strFuncCall = CallInst::Create(strFuncPtr, "", thenBlock);

    	//ReturnInst::Create(context, strFuncCall, thenBlock);

    	//// Block for the case when topic_ is null
    	//// Return empty_str
    	//LoadInst *emptyStrLoad = new LoadInst(stringType, emptyStrVar, "empty_str_load", elseBlock);
    	//ReturnInst::Create(context, emptyStrLoad, elseBlock);

    	//// Set the insertion point to the merge block
    	//IRBuilder<> builder(mergeBlock);
    	//builder.CreateRetVoid();

    	//// Print the LLVM IR
    	//// M.print(outs(), nullptr);


	for (auto &F:M){	
		bool isFunc = true;
		if(F.getName().contains("get_topic")){
			outs()<<"Found get_topic: "<<F.getName()<<"\n";
		}
		if(F.getName().contains("publishVGR_Do")){
			for (BasicBlock &BB : F) {
				bool ifCallInst = false;
				bool ifTruncInst = false;
					
				for(Instruction &I: BB){
					//BasicBlock::iterator IP = BB.getFirstInsertionPt();
                	        	IRBuilder<> builder(&I);
					if(auto *invokeInst = dyn_cast<InvokeInst>(&I)){
						Value *calledValue = invokeInst->getCalledOperand();
						if (Function *calledFunction = dyn_cast<Function>(calledValue)) {
							StringRef functionName = calledFunction->getName();
							unsigned int numOperands = invokeInst->getNumOperands();
							//outs()<<"numOperands: "<<numOperands<<"\n";
							if(functionName.contains("make_message")){
								outs()<<"found make_message: "<<*invokeInst<<"\n";
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

