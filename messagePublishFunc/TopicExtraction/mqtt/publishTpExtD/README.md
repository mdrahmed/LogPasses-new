# Working files,
Now the `topicExtractedpublish-v2.cpp` pass is working perfectly with the demo code, to see run following,
```
./client_sub # in 1 terminal
./publisher # in another terminal
```

But need to check a few things like, right now I am loading the 2nd param of `make_message` but if there is no 2nd param then what to do. The error I was getting while loading the `c_str()` function with the `callInst` is now gone, if I call the `c_str()` with the `loadedValue` or `secondParam` which are the loaded value of 2nd parameter of `make_message` and 2nd parameter of `make_message`. 
**This is working now for all the `publish` calls. But double check tomorrow 22nd june and update me.**


## Here is what I see something expected from the Makefile => GET THE VARIABLES NAME AS IT IS PRESENT IN THE IR,
In here, somehow the name is kept,
```
1 warning generated.
#clang++-14 -o publisher -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto publisher.cpp
clang++-14 -o publisher -lpaho-mqttpp3  -lpaho-mqtt3c -lpaho-mqtt3a -lmosquitto -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so publisher.cpp
publishVGR_do found
Invoked function: _ZN4mqtt12make_messageENS_10buffer_refIcEES1_
Invoke inst:   invoke void @_ZN4mqtt12make_messageENS_10buffer_refIcEES1_(%"class.std::shared_ptr.111"* sret(%"class.std::shared_ptr.111") align 8 %pubmsg, %"class.mqtt::buffer_ref"* noundef %agg.tmp28, %"class.mqtt::buffer_ref"* noundef %agg.tmp31)
          to label %invoke.cont35 unwind label %lpad34, !dbg !3707
1st parameter:   %pubmsg = alloca %"class.std::shared_ptr.111", align 8
clang++-14 -o modified.ll -S -emit-llvm -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang ./instrument.so clientOrPublisher.ll
publishVGR_do found
Invoked function: _ZN4mqtt12make_messageENS_10buffer_refIcEES1_
Invoke inst:   invoke void @_ZN4mqtt12make_messageENS_10buffer_refIcEES1_(%"class.std::shared_ptr.111"* sret(%"class.std::shared_ptr.111") align 8 %15, %"class.mqtt::buffer_ref"* noundef %16, %"class.mqtt::buffer_ref"* noundef %17)
          to label %59 unwind label %134
1st parameter:   %15 = alloca %"class.std::shared_ptr.111", align 8
raihan@raihan-XPS-8940:~/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/publishTpExtD$ vim Makefile
```
I have used `-fno-discard-value-names` but still the names are not present in the modified.ll file
 
