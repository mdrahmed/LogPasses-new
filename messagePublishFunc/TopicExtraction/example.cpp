#include <stdio.h>
#include <iostream>
using namespace std;

int subtract(int a, int b){
	return a-b;
}
int strr(string s){
	printf("It's a string\n");
	return 0;
}


//int main(int argc, const char** argv) {
int main(){
    int a,b;
    printf("Provide 2 inputs => a,b.\nIf a is greater than 10 then subtract(string) function will be called. Otherwise str(string) will be called\n");
    scanf("%d %d", &a,&b);
    
    if(a > 10){
        printf("a is greater than 10\n");
	//subtract(a,b);
	strr("GoingtoStrr function");
    }
    else{
        printf("a is less than 10.\nInt function is called\n");
	subtract(a,b);
	//add(10,20);
    }
    return 0;
}


