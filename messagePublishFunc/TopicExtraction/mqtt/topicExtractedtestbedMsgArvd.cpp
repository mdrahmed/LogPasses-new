// Topic from message_arrived is extracted using this pass, don't compile the publisher for now, just use the publisher present here

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
		int i=0;
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
	
		//if(F.getName().contains("message_arrived") || F.getName().contains("publish") || F.getName().contains("connection_lost") || F.getName().contains("delivery_complete")){
		//if(F.getName().contains("message_arrived")){
		//if(F.getName() == "_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE"){ // worked
		if(F.getName() == "_ZN8callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE"){
			// If a function is declared then it will not have basic blocks in them. So, if a function is not delcared then it will have basic block, which I need to insert printf
			if(!F.isDeclaration()){
				auto &BB = F.getEntryBlock();        
				std::vector<std::string> arguments; // This vector will be used to store functions arguments name
				BasicBlock::iterator IP = BB.getFirstInsertionPt();
				IRBuilder<> builder(&(*IP));
				
				{
					// using the format specifier for printing the values
					std::string format("arg_values: ");
					for (size_t i = 0; i < arg_values.size(); ++i) {
						format += "%s\n";
					}
					Value *str = builder.CreateGlobalStringPtr(format, "");
					std::vector<Value *> argsV({str});

					outs()<<"\nFunction name:"<<F.getName()<<"\n";
				
					for (auto &v : arg_values) {
						outs()<<"Just v:"<< *v <<"\n";
						if(v->getType()->isPointerTy()){
							outs()<<"Pointer type:"<< *v->getType() <<"\n";
							auto containedType = v->getType()->getContainedType(0);
							outs()<<"Contained type(0): "<<*v->getType()->getContainedType(0)<<"\n";
							outs()<<"Contained type is struct type: "<<containedType->isStructTy()<<"\n";
							outs()<<"Contained contained type: "<<*containedType->getContainedType(0)<<"\n";
							outs()<<"Contained contained type struct: "<<containedType->getContainedType(0)->isStructTy()<<"\n";
							if (containedType->getStructName().startswith("class.std::shared_ptr")) {
								// This part checks if v is an actual object, not necessarily required here, but yet given to ensure the type of v
								outs()<<"Contained Pointer Struct name: "<<containedType->getContainedType(0)->getStructName()<<"\n";
								// trying to print the pointer shared pointer is pointing to 
								assert(containedType->getContainedType(0));
								// Now getting the contained types and it's shared pointers like following,
								// Contained Pointer Type:%"class.std::__shared_ptr.113" = type { %"class.mqtt::delivery_token"*, %"class.std::__shared_count" }
								Type *containedPointerType = containedType->getContainedType(0);
								outs()<< "Contained Pointer Type:" << *containedPointerType <<"\n";
								assert(containedPointerType->isStructTy());
								outs()<<"First type: "<< *containedPointerType->getContainedType(0)<<"\n";
								// So, the 1st type of 1st pointer is extracted, looks like -  %"class.mqtt::delivery_token"*
								Type *firstType = containedPointerType->getContainedType(0);
								assert(firstType->isPointerTy());

								// Now, getting the pointer to the %"class.mqtt::message"*
								outs()<<"v type to pointerElement type:"<<*v->getType()->getPointerElementType()<<"\n";
								outs()<<"firstType pointer element type: "<<*firstType->getPointerElementType()<<"\n";
								//auto* sharedPtrAccessType = StructType::getTypeByName(context, "class.std::__shared_ptr_access.14");
                                                                // For testbed shared pointer is "class.std::__shared_ptr_access.43"
                                                                auto* sharedPtrAccessType = StructType::getTypeByName(context,"class.std::__shared_ptr_access.43");
								if(sharedPtrAccessType){
									//if(sharedPtrAccessPointerType != null){  // CHECK IF IT'S NULL
									outs()<<"sharedPtrAccessType: "<<*sharedPtrAccessType<<"\n";
									auto* sharedPtrAccessPointerType = PointerType::getUnqual(sharedPtrAccessType);
									outs()<<"sharedPtrAccessPointerType: "<<*sharedPtrAccessPointerType<<"\n";
									//auto* sharedPtrAccessPointerType = PointerType::getUnqual("class.std::__shared_ptr_access.14");
									if(sharedPtrAccessPointerType){
										auto* bitcast = builder.CreateBitCast(v, sharedPtrAccessPointerType, "bitcast");
										
										// JUST CALLING SAME FUNCTIONS LIKE MQTT DOES
										llvm::Function* mqttMsgFn = F.getParent()->getFunction("_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv");
										if(mqttMsgFn){
											assert(mqttMsgFn);
											Value *msgClass = builder.CreateCall(mqttMsgFn, bitcast);
											//argsV.push_back(msgClass);
											outs()<<"msgClass: "<< *msgClass <<"\n";

											llvm::Function* getTopicFn = F.getParent()->getFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev");
											Value *topicStrPtr = builder.CreateCall(getTopicFn, msgClass);
											outs()<<"topic from msg:"<< *topicStrPtr <<"\n";
											//auto* topicStr = builder.CreatePointerCast(topicStrPtr, Type::getInt8PtrTy(context));
											//argsV.push_back(topicStrPtr);
											
											// Calling the present c_str()
											llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
											if(c_str != nullptr){
												Value *topicStr = builder.CreateCall(c_str, topicStrPtr);
												if(topicStr)
													argsV.push_back(topicStr);
												i++;
											}

										}
									}
								}
							}
							else{
								//llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
								//outs()<<"loadedValue: "<<*loadedValue<<"\n";
					                	//argsV.push_back(loadedValue);
								argsV.push_back(builder.CreateGlobalStringPtr("This is msg part 1", ""));
							}
							continue;
							outs()<<"continuing\n";
					        }
						//argsV.push_back(v);
						argsV.push_back(builder.CreateGlobalStringPtr("not inserting v this time", ""));
					}
					builder.CreateCall(printfFunc, argsV, "calltmp"); 
					outs()<<"called printf\n";
					outs()<<"i: "<<i<<"\n";
					if(i>=1)break;
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

