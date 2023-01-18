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
PASS_SRC=valueMsgPubTime.cpp ## LOGGING THE FUNCTIONS, ARGUMENTS AND VALUES ## New valueMsgPub.cpp will contain bitcast but oldValueMsgPub is a copy of old one without bitcasting the values
#PASS_SRC=PubMsgArrWorked.cpp ## Publish is working here
LL=example.ll
CPP_file=example.cpp
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
