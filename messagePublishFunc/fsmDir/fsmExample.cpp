#include <iostream>

// Define the FSM_TRANSITION macro
#define _DEBUG 1
//#ifdef _DEBUG
// #define FSM_TRANSITION( _newState, attr... )                              \
//    do                                                                    \
//    {                                                                     \
//        std::cerr << "Transition from " << currentState << " to " << _newState << std::endl; \
//        currentState = _newState;                                         \
//    } while (false)
//#else
// #define FSM_TRANSITION( _newState, attr... )  currentState = _newState
//#endif

void fsm_transition(int& currentState, int newState)
{
    #ifdef _DEBUG
        std::cerr << "Transition from " << currentState << " to " << newState << std::endl;
    #endif
    currentState = newState;
}

// Example usage of the FSM_TRANSITION macro
int main()
{
    int currentState = 0;

    while(currentState < 10){
	    //FSM_TRANSITION(currentState);	
	    fsm_transition(currentState, currentState + 1);
	    std::cout << "Current state is: " << currentState << std::endl;	
	    if(currentState>0){
		std::cout <<"Checking inside if condition\n";
	    }
	    
	    currentState += 1;
    }    


    return 0;
}

