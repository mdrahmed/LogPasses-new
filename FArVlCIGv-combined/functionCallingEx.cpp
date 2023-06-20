#include <iostream>

using namespace std;

void function1(int a);
bool function2();

int main()
{
    cout << "Starting program...\n";
    int a = 10;
    function1(a);
    cout << "Program completed.\n";
    return 0;
}

void function1(int a)
{
	cout<<"a is:"<<a<<"\n";
    cout << "Function 1 starting...\n";
    if(function2())
	    cout<<"Function 2 has been called\n";
    cout << "Function 1 completed.\n";
}

bool function2()
{
    cout << "Function 2 completed.\n";
    return true;
}

