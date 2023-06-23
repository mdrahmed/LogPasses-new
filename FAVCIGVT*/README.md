# Everything is logged
## Following 2 passes are combined here - tfavcigvPass.cpp
	Location:
	```
	LogPasses-new/FAVCIGVT\*
	```
	While running `make` it will either create a `publisher` or `subscriber` - check `Makefile`

This pass prints function names, arguments, values, callInsts, global variables - `longCaller-combined.cpp`
	Location: 
	```
	LogPasses-new/FArVlCIGv-combined
	```
	run `make clean` and `make` to see the effect.
	
To extract `message_arrived()` and `publish` topic use this pass `bothTopicPass.cpp` 
