#include <stdio.h>

void main()
{
	int i;
	for (i=0; i<23; i++)
	{
		printf("\t\tcase %i:\n\t\t\tLED%i = value;\n\t\t\tbreak;\n", i, i);
	}
}