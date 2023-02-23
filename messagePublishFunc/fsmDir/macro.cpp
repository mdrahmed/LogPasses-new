//#ifdef _DEBUG
#define FSM_TRANSITION( _newState, attr... )                               \
	do                                                                 \
	{                                                                  \
		std::cerr << state2str( currentState ) << " -> "               \
		<< state2str( _newState ) << std::endl;                        \
		newState = _newState;                                          \
	}                                                                  \
	while( false )
//#else
//#define FSM_TRANSITION( _newState, attr... )  newState = _newState
//#endif
