CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)


CLANG=clang++-14
PASS=instrument.so
#PASS_SRC=shortPass.cpp
#PASS_SRC=longPass.cpp 
#PASS_SRC=IfConditionFinder.cpp
#PASS_SRC=newLongPass.cpp
PASS_SRC=stringExtractPass.cpp
LL=example.ll
MODIFIED=modified.ll
CPP_file=example.cpp
Objects=ex instrument.so *.ll

all: $(LL) $(PASS) ex $(MODIFIED)
	
$(LL): $(CPP_file)
	$(CLANG) -o $@ -S -emit-llvm $<

$(PASS): $(PASS_SRC)
	$(CLANG) $(CLANG_CFL) -g -shared $< -o $@

ex: $(CPP_file)  
	$(CLANG) -o $@ -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

$(MODIFIED): $(LL)
	$(CLANG) -o $@ -S -emit-llvm -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

.PHONY: clean
clean:
	rm $(Objects)
