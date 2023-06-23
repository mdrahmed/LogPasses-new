# Everything is logged
## Following 2 passes are combined here - `tfavcigvPass.cpp`

Location:
	```
	LogPasses-new/FAVCIGVT\*/tfavcigvPass.cpp
	```
	While running `make` it will either create a `publisher` or `subscriber` - check `Makefile`
	Variables names are also preserved with the `Makefile` of testbed. only added `-fno-discard-value-names`, following is the cmd,
	```
	EXECUTEABLE_g++ =  clang++-14 --target=arm-linux-gnueabihf -fno-discard-value-names -flegacy-pass-manager -g -Xclang -load -Xclang /home/raihan/LogPasses-new/FAVCIGVT\*/instrument.so
	```
					

This pass prints function names, arguments, values, callInsts, global variables - `longCaller-combined.cpp`
	Location: 
	```
	LogPasses-new/FArVlCIGv-combined
	```
	run `make clean` and `make` to see the effect.
	
To extract `message_arrived()` and `publish` topic use this pass `bothTopicPass.cpp` 
