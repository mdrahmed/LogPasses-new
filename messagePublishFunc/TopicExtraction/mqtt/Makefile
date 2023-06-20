CXXFLAGS=-O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -g -Wno-pointer-sign -DVERSION=1  -Wno-variadic-macros
CLANG_CFL=$(shell llvm-config-14 --cxxflags) -Wl,-znodelete -fno-rtti -fpic $(CXXFLAGS)
CLANG_LFL=$(shell llvm-config-14 --ldflags --libs)

LIB_CFLAGS=-L"/home/u18new/txt_training_factory/deps/lib"
LIB_INC_CFLAGS = -I"/home/u18new/txt_training_factory/deps/include"

CLANG=clang++-14 
PASS=instrument.so
#PASS_SRC=stringExtractPass.cpp ## This pass will extract string, now trying to extrat content of shared pointer
#PASS_SRC=typeExtractedPass.cpp ## extracted type using this pass
#PASS_SRC=valueTypeExtractionPass.cpp ## Contains all functions
#PASS_SRC=topicExtractedmsgArvd.cpp   ## This is the pass to extract topic from message_arrived function.
#PASS_SRC=topicExtractedtestbedMsgArvd.cpp ## Trying to get_topic from message_arrived of testbed
#PASS_SRC=topicExtractedtestbedMsgArvd-v2.cpp ## This is function pass conversion of module pass-topicExtractedtestbedMsgArvd.cpp copy 
## *** `topicExtractedtestbedCallInstpass.cpp` PASS EXTRACTED TOPIC FROM MESSAGE_ARRIVED FUNCTION.
#PASS_SRC=topicExtractedtestbedCallInstpass.cpp ## TRYING TO EXTRACT TOPIC FROM A CALLINST WHICH IS CALLING GET_TOPIC() FUNCTION *** IT WORKED
#PASS_SRC=topicExtractedtestbedCallInstpass-v2.cpp ## Also trying to extract the message from message_arrived
PASS_SRC=topicExtractedtestbedpublishCallInstpass.cpp ## Trying to extract publish topic and msg from the publish functions
PASS_SRC=declareGet_topicpass.cpp ## trying to declare get_topic function
#PASS_SRC=testbedTopicExtractPass.cpp ## this will extract message_arrived() topic from the testbed
#PASS_SRC=topicExtractedpublish.cpp   ## This pass will extract topic from message_arrived function but using the predefined functions
#PASS_SRC=defineC_strPass.cpp  ## trying to define c_str function
#PASS_SRC=functionCallPass.cpp ## trying to call a simple function which is defined inside the pass
#PASS_SRC=testbedTopicExtractPass.cpp ## This will extract topic for the 
LL=client.ll
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

# FOR TESTBED
LIB_CFLAGS=-L"/home/u18new/txt_training_factory/deps/lib"
LIB_INC_CFLAGS = -I"/home/u18new/txt_training_factory/deps/include"
LINKER_FLAGS_LIBS = -l"TxtSmartFactoryLib" \
	-l"paho-mqtt3c" \
	-l"paho-mqtt3a" \
	-l"paho-mqttpp3" \
	-l"opencv_core" \
	-l"opencv_videoio" \
	-l"opencv_imgcodecs" \
	-l"opencv_imgproc" \
	-l"jsoncpp" \
	-l"pthread" \
	-l"SDL" \
	-l"SDL_gfx" \
	-l"SDL_ttf" \
	-l"ts" \
	-l"freetype" \
	-l"z" \
	-l"png16" \
	-l"bz2" \
	-l"jpeg" \
	-l"asound" \
	-l"SDL_image" \
	-l"nfc" \
	-l"freefare" \
	-l"crypto" \
	-l"TxtControlLib" \
	-l"ROBOProLib" \
	-l"MotorIOLib" \
	-l"KeLibTxt"

Objects=$(EXE) instrument.so *.ll $(binary) $(BC_FILE) $(OBJ) 

all: $(LL) $(PASS) $(EXE) $(MODIFIED)
	
$(LL): $(CPP_file)
	$(CLANG) -o $@ -S -emit-llvm $<

$(PASS): $(PASS_SRC)
	$(CLANG) $(CLANG_CFL) -g -shared $< -o $@

$(EXE): $(CPP_file) 
	#$(CLANG) -o $@ -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto $< 	
	# generally created pass with this
	$(CLANG) -o $@ -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<
	# checking if I can create a executable of 32 bit that as all binaries of testbed are 32-bit
	#$(CLANG) -o $@ $(LIB_CFLAGS) $(LIB_CFLAGS) --target=arm-linux-gnueabihf -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so $<

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
