CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)


CLANG=clang++-14
PASS=instrument.so
#PASS_SRC=bothTopicPass.cpp ## both of the topic are extracted
PASS_SRC=tfavcigvPass.cpp ## topic, function names, arguments, values, callInsts, callInsts values, global variable values are logged
LL=clientOrPublisher.ll
CPP_file=client_subscriber.cpp
#CPP_file=publisher.cpp

# modified part
MODIFIED=modified.ll
BC_FILE=m.bc
OBJ=m.o
binary=m

# general_client_sub_pub part
sub=client_subscriber.cpp
pub=publisher.cpp
sub_exe=client_sub
pub_exe=pub

ifeq ($(CPP_file),client_subscriber.cpp)
	EXE=subscriber
else
	EXE=publisher
endif
Objects=$(EXE) instrument.so *.ll $(binary) $(BC_FILE) $(OBJ) 

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

modified:
	#@echo "Running instructions for mytarget"
	llvm-as-14 $(MODIFIED) -o $(BC_FILE)
	llc-14 -filetype=obj $(BC_FILE) -o $(OBJ)
	$(CLANG) $(OBJ) -o $(binary) -no-pie -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto

general_client_sub_pub:
	$(CLANG) $(sub) -o $(sub_exe) -lpaho-mqttpp3 -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto
	$(CLANG) $(pub) -o $(pub_exe) -lpaho-mqttpp3 -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto



.PHONY: clean
clean:
	rm $(Objects)
