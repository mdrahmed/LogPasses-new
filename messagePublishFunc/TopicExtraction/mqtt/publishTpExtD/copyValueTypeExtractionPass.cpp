// Type is extracted in typeExtractionPass.cpp, so, I am trying to get the value pointer the shared pointer is pointing to with this pass.

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
	
		if(F.getName().contains("message_arrived") || F.getName().contains("publish") || F.getName().contains("connection_lost") || F.getName().contains("delivery_complete")){
		//if(F.getName().contains("message_arrived")){
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
						if(v->getType()->isPointerTy()){
							outs()<<"Just v:"<< *v <<"\n";
							outs()<<"Pointer type:"<< *v->getType() <<"\n";
							auto containedType = v->getType()->getContainedType(0);
							outs()<<"Contained type(0): "<<*v->getType()->getContainedType(0)<<"\n";
							outs()<<"Contained type is struct type: "<<containedType->isStructTy()<<"\n";
							outs()<<"Contained contained type: "<<*containedType->getContainedType(0)<<"\n";
							outs()<<"Contained contained type struct: "<<containedType->getContainedType(0)->isStructTy()<<"\n";
							if (containedType->getStructName().startswith("class.std::shared_ptr")) {
							   { // This part checks if v is an actual object, not necessarily required here, but yet given to ensure the type of v
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

								//llvm::Value* containedValue = builder.CreateLoad(containedType, builder.CreateGEP(containedType, v, {builder.getInt32(0) , builder.getInt32(0)}));
                                                                //outs()<<"containedValue: "<<*containedValue<<"\n";
                                                                //outs()<<"containedValue type: "<<*containedValue->getType()->getContainedType(0)<<"\n";

								//llvm::Value* containedPointerValue = builder.CreateLoad(firstType, builder.CreateGEP(containedValue->getType()->getContainedType(0), containedValue, {builder.getInt32(0) , builder.getInt32(0)}));
							   	//outs()<<"containedPointerValue: "<<*containedPointerValue<<"\n";
								
								//llvm::value* containedpointervalue = builder.createstructgep(firsttype, containedvalue, 0);
								//llvm::Value* mqttMessagePtr = builder.CreateLoad(containedPointerValue);

								//// Probably need the hell bitcast
								//auto* newPointerType = llvm::PointerType::getUnqual(containedPointerType);
								//auto* bitcast = builder.CreateBitCast(v, newPointerType, "bitcast");
								//outs()<<" Just v: "<<v<<" "<<"just bitcast: "<<bitcast<<"\n";
								//outs()<<"*bitcast:"<<*bitcast<<"\n";
								//outs()<<"bitcast 1st pointer value: "<<*bitcast->getType()->getPointerElementType()<<"\n";
								
								//auto* accessType = llvm::StructType::get(containedPointerType->getPointerElementType()->getContext(), {llvm::PointerType::getUnqual(containedPointerType->getPointerElementType()), llvm::IntegerType::get(containedPointerType->getPointerElementType()->getContext(), 32)}, true);

								// MAKING __shared_ptr_access type from __shared_ptr
								//std::vector<Type*> fields = { Type::getInt8Ty(context)};
								//auto* sharedPtrAccessType = StructType::create(context, "class.std::__shared_ptr_access.14");
								auto* sharedPtrAccessType = StructType::getTypeByName(context, "class.std::__shared_ptr_access.14");

								//if(sharedPtrAccessPointerType != null){  // CHECK IF IT'S NULL
								auto* sharedPtrAccessPointerType = PointerType::getUnqual(sharedPtrAccessType);
								//auto* sharedPtrAccessPointerType = PointerType::getUnqual("class.std::__shared_ptr_access.14");
								auto* bitcast = builder.CreateBitCast(v, sharedPtrAccessPointerType, "bitcast");
								//auto* bitcast = builder.CreateBitCast(v, sharedPtrAccessPointerType, "bitcast");
								
								//// set non-null metadata on the bitcast instruction
								////bitcast->setMetadata(llvm::LLVMContext::MD_nonnull, llvm::MDNode::get(builder.getContext(), {}));
								//auto* md = llvm::MDNode::get(builder.getContext(), llvm::MDString::get(builder.getContext(), "nonnull"));
								//llvm::cast<llvm::Instruction>(bitcast)->setMetadata(llvm::LLVMContext::MD_nonnull, md);
								////sharedPtrAccessType = sharedPtrAccessPointerType->getPointerElementType();
								//// get the type of the shared pointer access object
								//StructType* sharedPtrAccessStructType = cast<StructType>(sharedPtrAccessType->getPointerElementType());
								//auto* sharedPtr = builder.CreateLoad(sharedPtrAccessType, bitcast);

								//// GETTING CLASS.MQTT::MESSAGE VALUE BY GETTING POINTERS TO THE MESSAGE BODY 
								//llvm::Value* containedPointerValue = builder.CreateGEP(containedPointerType, bitcast, {builder.getInt32(0) , builder.getInt32(0)});
								//outs()<<"ConatainerPointerValue: "<<*containedPointerValue<<"\n";
								////llvm::Value* firstValue= builder.CreateStructGEP(containedPointerValue->getType()->getContainedType(0), containedPointerValue, 0);
								//llvm::Value *loadedValue = builder.CreateLoad(containedPointerValue->getType()->getPointerElementType(),bitcast);
								//outs()<<"loadedValue addr:"<<loadedValue<<"\n";
                                                                //outs()<<"loadedValue: "<<*loadedValue<<"\n";
                                                                ////argsV.push_back(loadedValue);
								
								
								// JUST CALLING SAME FUNCTIONS LIKE MQTT DOES
								llvm::Function* mqttMsgFn = F.getParent()->getFunction("_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv");
								assert(mqttMsgFn);
								Value *msgClass = builder.CreateCall(mqttMsgFn, bitcast);
								//argsV.push_back(msgClass);
								outs()<<"msgClass: "<< *msgClass <<"\n";

								//// Add metadata to the call instruction
								//llvm::MDNode *nonnullNode = llvm::MDNode::get(builder.getContext(), llvm::MDString::get(builder.getContext(), "nonnull"));
								//msgClass->setMetadata(llvm::LLVMContext::MD_nonnull, nonnullNode);
								//msgClass->setAlignment(llvm::Align(1));
								//msgClass->addDereferenceableAttr(0, llvm::MaybeAlign(1));
								//msgClass->addAttribute(llvm::AttributeList::FunctionIndex, llvm::Attribute::NoUndef);

								llvm::Function* getTopicFn = F.getParent()->getFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev");
								Value *topicStrPtr = builder.CreateCall(getTopicFn, msgClass);
								outs()<<"topic from msg:"<< *topicStrPtr <<"\n";
								//auto* topicStr = builder.CreatePointerCast(topicStrPtr, Type::getInt8PtrTy(context));
								//argsV.push_back(topicStr);
								
								// Calling the present c_str()
								llvm::Function* c_str = F.getParent()->getFunction("_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv");
								Value *topicStr = builder.CreateCall(c_str, topicStrPtr);
								argsV.push_back(topicStr);

								
								//// Now, I need to call c_str() function
								//// Create a FunctionType for c_str() that takes a pointer to i8 and returns a pointer to i8
								//auto* cStrFnType = FunctionType::get(PointerType::getUnqual(Type::getInt8Ty(context)), {PointerType::getUnqual(Type::getInt8Ty(context))}, false);
								//// Create a Function for c_str() with the above FunctionType
								//auto* cStrFn = Function::Create(cStrFnType, Function::ExternalLinkage, "_ZNSs4c_strEv", F.getParent());
								//// Call c_str() on topicStrPtr using CreateCall
								//auto* topicCStrPtr = builder.CreateCall(cStrFn, {topicStrPtr});
								//// Add topicCStrPtr to argsV vector
								//argsV.push_back(topicCStrPtr);


							   }
							   //{ // This part calls the get_topic() function with the object `v`
							   //     // Get the function named "_ZNK4mqtt7message9get_topicB5cxx11Ev" from the parent module of F
							   //     llvm::Function* getTopicFn = F.getParent()->getFunction("_ZNK4mqtt7message9get_topicB5cxx11Ev");
							   //     // Ensuring that the LLVM function pointer getTopicFn is not null
							   //     assert(getTopicFn);
							   //     //outs()<<*containedType->getPointerElementType()<<"\n";
							   //     if (getTopicFn->hasFnAttribute(llvm::Attribute::AlwaysInline)) {
							   //     	getTopicFn->addFnAttr(llvm::Attribute::NoInline);
							   //     }
							   //     
							   //     // Call the function with the argument v and get the returned value, which is a pointer to a string
							   //     //Value *topicStrPtr = builder.CreateCall(getTopicFn, v);
							   //     Value *topicStrPtr = builder.CreateCall(getTopicFn, v);
							   //     
							   //     // Print the type of the returned value
							   //     outs()<<"topicStrPtr type: "<<*topicStrPtr->getType()<<"\n";
							   //     
							   //     // Load the string from the pointer
							   //     Value *loadedTopicStrPtr = builder.CreateLoad(topicStrPtr->getType()->getPointerElementType(),topicStrPtr);
							   //     
							   //     // Convert the loaded string pointer to a char pointer
							   //     Value *topicCharPtr = builder.CreatePointerCast(loadedTopicStrPtr, builder.getInt8PtrTy());
							   //     
							   //     // Add the char pointer to argsV, which is a vector of arguments for another function call
							   //     argsV.push_back(topicCharPtr);
							   //}
							}
							else{
								llvm::Value *loadedValue = builder.CreateLoad(v->getType()->getPointerElementType(),v);
								outs()<<"loadedValue: "<<*loadedValue<<"\n";
					                	//argsV.push_back(loadedValue);
								argsV.push_back(builder.CreateGlobalStringPtr("This is msg part 1", ""));
							}
							continue;
					        }
						argsV.push_back(v);

					}
					builder.CreateCall(printfFunc, argsV, "calltmp"); 
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

