#include <stdio.h>

int main()
{
    float floatNum = 3.14159;        // Single-precision floating-point
    double doubleNum = 3.1415926535;  // Double-precision floating-point
    long double longDoubleNum = 3.14159265358979323846L; // Extended-precision floating-point

    printf("Float value: %f\n", floatNum);
    printf("Double value: %lf\n", doubleNum);
    printf("Long Double value: %Lf\n", longDoubleNum);

    return 0;
}
