#include <stdio.h>

const char hello[] = "Hello";

int zero[2 * 1024 * 1024];

int main(void){
	*(char*)hello = 0;

	return 0;


}


