# Combining all important passes here
Only need to add the topic pass which is present in,
1. Topic from `message_arrived` - `topicExtractedtestbedCallInstpass.cpp`
Location: `/home/raihan/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt`
2. Topic from `publish` - `topicExtractedtestbedpublishCallInstpass.cpp` => It's not done yet. If didn't use `get_topic()` rather makes the message with `make_message()`. The 1st parameter of this function is the topic. So, just print that using the logic from `CallerFromCallInstPass-v6.2.cpp`

### `CallInst` and `global variable` pass
`CallerFromCallInstPass-v6.2.cpp` is a pass which is correctly logging the call instructions, global variables and functions defined only in the application/testbed code. 
Location: `/home/raihan/LogPasses-new/messagePublishFunc/recordCallInst`
also present in `/home/raihan/LogPasses-new/messagePublishFunc/`

### `Functions, arguments and values are printed with following pass,
`longPass.cpp` is logging all the functions, arguments and variable values.
Location: `/home/raihan/LogPasses-new/messagePublishFunc`

[Note]: **Need to remember that the `longPass.cpp` is logging all the functions. But I need to log only the application functions, which is done by the `CallerFromCallInstPass-v6.2.cpp`**
