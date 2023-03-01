#include <iostream>
#include <chrono>
#include <thread>

#ifdef FSM_TRANSITION
#undef FSM_TRANSITION
#endif

#ifdef _DEBUG
#define FSM_TRANSITION( _newState, attr... ) \
    do \
    { \
        std::cerr << state2str( currentState ) << " -> " \
                  << state2str( _newState ) << std::endl; \
        newState = _newState; \
    } \
    while( false )
#else
#define FSM_TRANSITION( _newState, attr... )  newState = _newState
#endif

enum State {
    FAULT,
    IDLE,
    CALIB_HBW
};

void doActivities(State currentState, State newState) {
    if(newState != currentState) {
        switch(newState) {
            case FAULT: {
                std::cout << "Entering FAULT state" << std::endl;
                break;
            }
            case IDLE: {
                std::cout << "Entering IDLE state" << std::endl;
                break;
            }
            case CALIB_HBW: {
                std::cout << "Entering CALIB_HBW state" << std::endl;
                break;
            }
            default: break;
        }
        currentState = newState;
    }

    switch(currentState) {
        case CALIB_HBW: {
            bool reqQuit = true;
            if (reqQuit) {
                FSM_TRANSITION(IDLE, color=green, label='req\nquit');
		std::cout << "Requested to quit\n";
		reqQuit = false;
            }
            #ifdef __DOCFSM__
            FSM_TRANSITION(FAULT, color=red, label='wait');
            #endif
            std::this_thread::sleep_for(std::chrono::milliseconds(1000));
            break;
        }
        default: {
	    std::cout<<"This is default case.\n";
 	    break;
	}
    }
}

int main() {
    State currentState = IDLE;
    State newState = CALIB_HBW;

    doActivities(currentState, newState);

    return 0;
}

