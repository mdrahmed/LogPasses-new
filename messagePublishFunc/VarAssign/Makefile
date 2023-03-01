CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)


CLANG=clang++-14
PASS=instrument.so
#PASS_SRC=2varAssignPass.cpp ## This is a pass I want to use to print the values of store inst as well
PASS_SRC=varAssignPass.cpp  ## This adds a printf inside the cpp code, which prints the store and alloc inst
#PASS_SRC=testPass.cpp
LL=VarAssigns.ll
CPP_file=assigns.cpp
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
