#include <stdio.h>

int add(int a,int b){
	return a+b;
}
int subtract(int a, int b){
	return a-b;
}
int subtract(int a){
	return a-10;
}

int main(int argc, const char** argv) {
    int a,b;
    printf("Provide 2 inputs => a,b.\nIf a is greater than 10 then subtract function will be called.\n");
    scanf("%d %d", &a,&b);
    
    if(a > 10){
        printf("a is greater than 10");
	subtract(a,b);
    }
    else{
        printf("a is less than 10");
	add(a,b);
	//add(10,20);
    }
    return 0;
}


