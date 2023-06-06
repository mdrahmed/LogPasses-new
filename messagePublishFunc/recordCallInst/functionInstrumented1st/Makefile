CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)


CLANG=clang++-14
PASS=instrument.so
#PASS_SRC=fsmTransitionPass.cpp
#PASS_SRC=CallerFromCallInstPass.cpp ## insert printf to all function calls but changing it for only inserting in the conditional branches
#PASS_SRC=CallerFromCallInstPass-v2.cpp ## Tried a different approach to get the callInst
#PASS_SRC=CallerFromCallInstPass-v3.cpp ## Using the CallerFromCallInstPass.cpp but debugging it for segmentation fault  - it has the loadInst and callInst instructions logged
#PASS_SRC=CallerFromCallInstPass-v4.cpp ## Using this pass to get the values from those callInsts 
#PASS_SRC=CallerFromCallInstPass-v5.cpp ## Using the CallerFromCallInstPass-v4.cpp pass and removing the unnecessary parts - but it doesn't have the loadInt instruction
#PASS_SRC=CallerFromCallInstPass-v6.cpp ## LOGGED THE CALLINST VALUES WITH CALLINST AND LOADINST INSTRUCTIONS
PASS_SRC=CallerFromCallInstPass-v6.1.cpp ## Copy of v6 but it is logging only function calls 
#PASS_SRC=CallerFromCallInstPass-v7.cpp ## Copy of CallerFromCallInstPass-v6.cpp and only logging CallInst Functions => It logs all CallInst functions

LL=callers.ll
CPP_file=functionCallingEx.cpp
#CPP_file=simple.cpp
Objects=ex instrument.so *.ll

all: $(LL) $(PASS) ex 
	
$(LL): $(CPP_file)
	$(CLANG) -o $@ -fno-discard-value-names -S -emit-llvm $<

$(PASS): $(PASS_SRC)
	$(CLANG) $(CLANG_CFL) -g -shared $< -o $@

ex: $(CPP_file)  
	$(CLANG) -O0 -o $@ -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

.PHONY: clean
clean:
	rm $(Objects)
