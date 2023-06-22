## Combining following 2 passes to print the function names, arguments, values, callInsts, global variables
Working pass - `longCaller-combined.cpp`


### `CallInst` and `global variable` pass
`CallerFromCallInstPass-v6.2.cpp` is a pass which is correctly logging the call instructions, global variables and functions defined only in the application/testbed code. 
Location: `/home/raihan/LogPasses-new/messagePublishFunc/recordCallInst`
also present in `/home/raihan/LogPasses-new/messagePublishFunc/`

### `Functions, arguments and values are printed with following pass,
`longPass.cpp` is logging all the functions, arguments and variable values.
Location: `/home/raihan/LogPasses-new/messagePublishFunc`

[Note]: **Need to remember that the `longPass.cpp` is logging all the functions. But I need to log only the application functions, which is done by the `CallerFromCallInstPass-v6.2.cpp`**
