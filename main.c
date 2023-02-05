#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main()
{
    char* t = malloc(16);
    strcpy(t, "Hello World\n");
    puts(t);
    free(t);
    return 0;
}