#include <stdio.h>

int add(int a,int b){
	return a+b;
}
int subtract(int a, int b){
	return a-b;
}

int main(int argc, const char** argv) {
    int a,b;
    scanf("%d %d", &a,&b);
    //printf("add func: %d",add(a,b));
    if(a > 10){
        printf("a is greater than 10");
	    subtract(a,b);
    }
    else{
        printf("a is less than 10");
	    add(a,b);
    }
    return 0;
}


