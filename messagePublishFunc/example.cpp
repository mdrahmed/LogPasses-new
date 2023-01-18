#include <stdio.h>
#include <iostream>
using namespace std;

int add(int a,int b){
	return a+b;
}
int subtract(int a, int b){
	return a-b;
}
int subtract(int a, string s, unsigned long ul, double d){
	return a-10;
}

int main(int argc, const char** argv) {
    int a,b;
    printf("Provide 2 inputs => a,b.\nIf a is greater than 10 then subtract function will be called.\n");
    scanf("%d %d", &a,&b);
    
    if(a > 10){
        printf("a is greater than 10");
	//subtract(a,b);
	subtract(a,"string",134,13.4);
    }
    else{
        printf("a is less than 10");
	add(a,b);
	//add(10,20);
    }
    return 0;
}


