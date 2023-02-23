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


	std::vector<StringRef> functions;	
	std::vector<StringRef> alp_funcs;

	int i,alp;
	i = 0;
	alp = 0;

	for (auto &F:M){
		std::vector<Value*> arg_values; // used to store functions argument values
		// Marking how many values a function has 
		for(auto i = F.arg_begin();i!=F.arg_end();++i){
			arg_values.push_back(i);
		}
		const DataLayout &DL = M.getDataLayout();
		
		// I am instrumenting only these certain functions
		if(F.getName().contains("requestOrder") || F.getName().contains("startThread") || F.getName().contains("start_thread") || F.getName().contains("fsmStep") || F.getName().contains("printState") || F.getName().contains("setTarget") || F.getName().contains("moveDeliveryInAndGrip") || F.getName().contains("moveNFC") ){
			if(F.getName().contains("publish")){
				errs()<<F.getName()<<"\n";	
			//if(F.getName().contains("action_listener_publish")){
			//	alp++;	
			//	alp_funcs.push_back(F.getName());
			//}	
			//for (auto &f : functions){
			//	errs()<<"No."<<i<<" f is: "<<f<<"\n";
			//	i++;
			//	if(f == F.getName()){
			//		errs()<<"Function found: "<<f<<"\n\n";
			//		continue;
			//	}
			//}
			//functions.push_back(F.getName());
			//errs()<<"New functions inserted is: "<<F.getName()<<"\n";
			//if(F.getName().contains("action_listener_publish"))
			//	continue;

			// If a function is declared then it will not have basic blocks in them. So, if a function is not delcared then it will have basic block, which I need to insert printf
			if(!F.isDeclaration()){
				auto &BB = F.getEntryBlock();        
				std::vector<std::string> arguments; // This vector will be used to store functions arguments name
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
				IRBuilder<> builder(&(*IP));
				//errs()<<"Func is not declared: "<<F.getName()<<"\n";
				{
					
					// Add string format specifier for each argument we will later print
					std::string format("arg_values: ");
					for (size_t i = 0; i < arg_values.size(); ++i) {
						format += " %s = %d\n";
						//format += " %s = %(0x%lx)\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});
					// If I simply push the values then it works fine but I have to get values for arm-32 bit.
					// That's why I am bitcasting the values to a 32-bit result and then pushing it. But only this part is causing the error. 
					/*
					for (auto &v : arg_values) {
					        argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
					        //const DataLayout &DL = M.getDataLayout();
					        unsigned SourceBitWidth = DL.getTypeSizeInBits(v->getType());
					        //unsigned SourceBitWidth = cast<IntegerType>(v->getType())->getBitWidth();;
					        //errs()<<"opcode: "<<CastInst::getCastOpcode(v, false, v->getType(), false)<<"\n";
						
						IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
					        //Instruction::CastOps opcode = CastInst::getCastOpcode(v, false, IntTy, false);                
        					//Value *IntResult = builder.CreateCast(opcode, v, IntTy); 
						
						//Value *IntResult = builder.CreateBitCast(v, IntTy);
						Instruction::CastOps opcode;
                                                Value *IntResult;
					        if(v->getType()->isPointerTy()){
							//IntResult = builder.CreatePtrToInt(v, IntTy);
							continue;
						}
						else if(v->getType()->isArrayTy()){
							continue;
							//int value32 = *(int*)v;
							//Value* val32 = (Value*)value32;
							//IntResult = builder.CreateBitCast(val32, IntTy);
						}	
						else{
							IntResult = builder.CreateBitCast(v, IntTy);
						}
						Value *Int64Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context) );
					        argsV.push_back(Int64Result);
					}
					*/
					/*
					for (auto &v : arg_values) {
					        argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
						if(v->getType()->isFloatTy()){
							IntegerType *IntTy = Type::getInt32Ty(F.getContext());
							Value *bc = CastInst::CreateBitOrPointerCast(v, IntTy);
							argsV.push_back(bc);
						}
					}
					*/
					/*
					for (auto &v : arg_values) {
					        argsV.push_back(builder.CreateGlobalStringPtr(v->getName(), ""));
					        const DataLayout &DL = M.getDataLayout();
					        unsigned SourceBitWidth = DL.getTypeSizeInBits(v->getType());
					        IntegerType *IntTy = builder.getIntNTy(SourceBitWidth);
					        Value *IntResult;
						if (v->getType()->isPointerTy()) {
                                                        IntResult = builder.CreatePtrToInt(v, IntTy);
                                                }
						else if (v->getType()->isArrayTy()) {
							continue;
							//errs()<<"V type:"<<*v->getType()<<"\n";
							//ArrayType *ArrayTy = dyn_cast<ArrayType>(v->getType());
							//auto NumElements = ArrayTy->getNumElements();
							//auto *NewArrayType = ArrayType::get(ArrayTy->getElementType(), NumElements * 2);
							//errs()<<"New Array Type: "<<NewArrayType->getTypeID()<<"\n";
							//auto *NewIntArrayType = ArrayType::get(builder.getIntNTy(SourceBitWidth), NumElements * 2);
							//errs()<<"New int array type: "<<NewIntArrayType->getTypeID()<<"\n";
							//auto *NewArray = builder.CreateBitCast(v, NewArrayType);
							//IntResult = builder.CreateBitCast(NewArray, NewIntArrayType);
						}
						else if(v->getType()->isDoubleTy()){
                                                        IntResult = builder.CreateFPToSI(v, Type::getInt32Ty(context));
                                                        //IntResult = builder.CreateIntCast(IntResult, destType, false);
                                                }
						else{
							IntResult = builder.CreateBitCast(v, IntTy);
							errs()<<*v->getType()<<"\n";
							assert(false);
						}
					        Value *Int32Result = builder.CreateSExtOrTrunc(IntResult, Type::getInt32Ty(context));
					        argsV.push_back(Int32Result);
					}
					*/
					
					for (auto &v : arg_values) {
						Type *srcType = v->getType();
						Type *destType = Type::getInt32Ty(context);
						//Value *castVal = builder.CreateBitOrPointerCast(v, destType);
				  		Value *castVal=0;
						if(srcType->isArrayTy()){
							continue;
						}
						else if(srcType->isDoubleTy()){
							continue; // just check if the last else if going to work in testbed controller with giving segfault
							//castVal = builder.CreateFPToSI(v, Type::getInt32Ty(context));
							//castVal = builder.CreateIntCast(castVal, destType, false);
							//errs()<<*srcType<<"\n";
							//assert(false);
						}
						else if (srcType->isFloatTy()) {
							continue;
							//castVal = builder.CreateFPToSI(v, Type::getInt32Ty(context));
							//castVal = builder.CreateIntCast(castVal, destType, false);
						}
						else if (srcType->isIntegerTy(16) || srcType->isIntegerTy(8) || srcType->isIntegerTy(1)) {
							continue;
							// If the source type is i16, first extend it to i32 using zext, then cast to i64
   						        //Value *extendedVal = builder.CreateZExt(v, Type::getInt32Ty(context));
   						        //castVal = builder.CreateBitOrPointerCast(extendedVal, destType);
   						}
					        else if(srcType->isIntegerTy(64)){
							continue;
							//Value *extendedVal = builder.CreateTrunc(v, Type::getInt64Ty(context));
                                                        //castVal = builder.CreateIntCast(v, Type::getInt32Ty(context), false);
						}	
						else if (srcType->isPointerTy()) {
							continue;
							//castVal = builder.CreatePtrToInt(v, destType);
						}
						else if(srcType->isIntegerTy(32)){
							//castVal = builder.CreateZExtOrBitCast(v, destType);
							//castVal = builder.CreateIntCast(v, Type::getInt32Ty(context), false);
							//errs()<<*srcType<<"\n";
							//assert(0);
							argsV.push_back(v);
							//assert(0);
						}
						//else {
   						//        // For all other types, just use a bitcast to cast to the destination type
						//	//castVal = builder.CreateIntCast(v, Type::getInt64Ty(context), false);
						//	castVal = builder.CreateZExtOrBitCast(v, destType);
						//	errs()<<*srcType<<"\n";
						//	assert(false); // now this assertion is working
						//	//llvm_unreachable("Invalid type for cast");
   						//}
						//argsV.push_back(castVal);
					}
					
					builder.CreateCall(printfFunc, argsV, "calltmp"); 
				}
			}
		}
	}
	//errs()<<"action_listener_publish is instrumented: "<<alp<<"\n";
	//for(auto &alpf: alp_funcs){
	//	errs()<<alpf<<"\n";
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

