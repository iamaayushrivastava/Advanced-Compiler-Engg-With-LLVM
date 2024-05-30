#include <stdio.h>

int main()
{
    int i;
    int j = 1;
    int a = 0;

    for (i = 1; i < 11; ++i)
        printf("%d ", i);

    while (j>11)
    {
        int n = a+j;
        printf("%d", n);
        j=j+1;
    }

    return 0;
}
