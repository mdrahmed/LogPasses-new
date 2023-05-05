Only the working files will present here,

1. `topicExtractedtestbedCallInstpass.cpp` this pass will extract topic from `message_arrived` function. It will check the callInsts and look for `get_topic()` function when it finds it then it will use the basic string extraction function `_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv` which is predefined here at the IR.
