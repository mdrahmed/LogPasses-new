# Log-passes
[Note: Inside the Ubuntu-18 VM this Log-passes is present inside LLVM_passes in home dir]


This are the most important passes I need, to create a new logging system. 
 - **[Well Functioning]** `message_arrived()` and `publish` topic are logged
	```
	LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/msgAndPubTopic/bothTopicPass.cpp
	```

 - **[Well Functioning]** Publish topic extracted from `make_message()` 2nd parameter.
	```
	LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/publishTpExtD/topicExtractedpublishPass-v3.cpp
	```

 - **[Well Functioning]**- Topic extracted from `message_arrived()` with following pass,
	```
	LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/topicExtractedtestbedCallInstpass.cpp 
	```
	run following cmd at that location to see the effect,
	```
	./subscriber # in 1 terminal
	./publisher # in another terminal
	```

 - **[Well Functioning]** `CallInsts, CallInst values, global variable values` are logged with following pass,
	```
	LogPasses-new/messagePublishFunc/recordCallInst/CallerFromCallInstPass-v6.2.cpp
	# also present in,
	LogPasses-new/FArVlCIGv-combined/CallerFromCallInstPass-v6.2.cpp
	```
 - **[Well Functioning]** `Function names, arguments and values` are logged with following pass,
	```
	LogPasses-new/messagePublishFunc/longPass.cpp
	# also present in 
	LogPasses-new/FArVlCIGv-combined/longPass.cpp
	```
 - **[Well Functioning]** `Function names, arguments, values, callInsts, callInst values, global variable values` are logged with following pass,
	```
	LogPasses-new/FArVlCIGv-combined/longCaller-combined.cpp
	```
 - The GetFunctions pass will generate only the functions names of any file.
 - The GetFunctions&Values pass will generate all the the function names and values of any file.
 - The Functions&ValuesWithArguments pass will generate all the function names, values and arguments.


Inside messagePublishFunc there is a valueMsgPub.cpp file which is the pass to get the function names, values, arguments and the user function of the function I am checking. Check the folder for details.

## Most important Makefiles
**The `modified.ll` which is the bitcode file of a cpp file. While using the pass the cpp file is modified and the instrumented bitcode or `.ll` file is created. This is shown in following `Makefile`.**
```
LogPasses-new/messagePublishFunc/TopicExtraction/mqtt
```


