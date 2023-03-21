CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)


CLANG=clang++-14
PASS=instrument.so
#PASS_SRC=stringExtractPass.cpp ## This pass will extract string, now trying to extrat content of shared pointer
PASS_SRC=topicExtractionPass.cpp ## trying to extract topic using this pass
LL=client.ll
MODIFIED=modified.ll
CPP_file=client_subscriber.cpp
#CPP_file=publisher.cpp
ifeq ($(CPP_file),client_subscriber.cpp)
	EXE=subscriber
else
	EXE=publisher
endif
Objects=$(EXE) instrument.so *.ll

all: $(LL) $(PASS) $(EXE) $(MODIFIED)
	
$(LL): $(CPP_file)
	$(CLANG) -o $@ -S -emit-llvm $<

$(PASS): $(PASS_SRC)
	$(CLANG) $(CLANG_CFL) -g -shared $< -o $@

$(EXE): $(CPP_file) 
	#$(CLANG) -o $@ -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto $< 	
	$(CLANG) -o $@ -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

$(MODIFIED): $(LL)
	$(CLANG) -o $@ -S -emit-llvm -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

.PHONY: clean
clean:
	rm $(Objects)
