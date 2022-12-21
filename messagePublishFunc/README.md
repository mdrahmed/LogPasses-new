# Message_arrived and publish function loggin passes

The messageAndPublish2.cpp will work fine for instrumenting code inside those functions. 
- messagearrivedPublish.cpp is logging only one message_arrived function
- messageAndPublish2.cpp is logging all message_arrived and publish functions
- funcCalls.cpp is logging all the functions and values.
- PubMsgArrWorked.cpp is working for publish functions
- **valueMsgPub.cpp contains code that will get function names, arguments and values. It will also get the user function. It is working fine with the ft code**
Compile time:
![image](https://user-images.githubusercontent.com/26908164/209020827-3050fb55-6d1f-4888-bbd4-185ca11b44bf.png)
Runtime:
![image](https://user-images.githubusercontent.com/26908164/209020762-41318b41-fee1-42a3-aa4f-5b0f15ade038.png)

