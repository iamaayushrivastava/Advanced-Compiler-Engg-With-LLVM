#include <stdio.h>

int main()
{
    int a, b, max;
    
    // Input two numbers
    printf("Enter the two numbers: ");
    scanf("%d %d", &a, &b);
    
    // Find the maximum using the ternary operator
    max = (a > b) ? a : b;
    
    printf("The maximum number is: %d\n", max);
    
    return 0;
}
