#include <stdio.h>

int main();

int number = 1;
char *ptr = (char*)&number;


if (*ptr == 1)
	printf("Little endian");

	else
	printf("Big endian");

	return 0;

	}
