#include <string>
#include <iostream>

using namespace std;

void message_arrived(string msg){
	cout<<msg<<endl;
}

int main(){
	string s = "message";
	message_arrived(s);
	return 0;
}
