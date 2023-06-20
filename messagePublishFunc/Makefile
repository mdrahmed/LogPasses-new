## exports to run on shell to compile it without Makefile
# export CXXFLAGS="-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros"
# export CLANG_CFL="`llvm-config-14 --cxxflags` -Wl,-znodelete -fno-rtti -fpic $CXXFLAGS"
# export CLANG_LFL=`llvm-config-14 --ldflags --libs`

CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)


CLANG=clang++-14
PASS=instrument.so
#PASS_SRC=funcCalls2.cpp
#PASS_SRC=messagearrivedPublish.cpp
#PASS_SRC=funcAnalysis.cpp
#PASS_SRC=funcNArg.cpp
#PASS_SRC=funcCalls.cpp  ## gets the values
#PASS_SRC=messageAndPublish2.cpp
#PASS_SRC=valueMsgPubTime.cpp ## LOGGING THE FUNCTIONS, ARGUMENTS AND VALUES ## New valueMsgPub.cpp will contain bitcast but oldValueMsgPub is a copy of old one without bitcasting the values
# PASS_SRC=PubMsgArrWorked.cpp ## Publish is working here
# PASS_SRC=IfConditionFinder.cpp #print the conditions for if and switch case
# PASS_SRC=varAssignPass.cpp  ## This adds a printf inside the cpp code, which prints the store and alloc inst
PASS_SRC=longPass.cpp ## last used, logging functions, arguments and values of a function

#PASS_SRC=CallerFromCallInstPass-v6.2.cpp ## I am not printing the Function: but in recordCallInst, it is printing this -- so, checking here => **I didn't clean the txt repo that's why make used earlier compiled files**

LL=example.ll
#CPP_file=example.cpp
CPP_file=functionCallingEx.cpp
Objects=ex instrument.so *.ll

all: $(LL) $(PASS) ex 
	
$(LL): $(CPP_file)
	$(CLANG) -o $@ -S -emit-llvm $<

$(PASS): $(PASS_SRC)
	$(CLANG) $(CLANG_CFL) -g -shared $< -o $@

ex: $(CPP_file)  
	$(CLANG) -o $@ -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

.PHONY: clean
clean:
	rm $(Objects)
