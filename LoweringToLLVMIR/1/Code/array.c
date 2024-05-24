#include <stdio.h>

int main()
{
	// array declaration and initialization
	int arr[5] = { 10, 20, 30, 40, 50 };

	// traversing array using for loop
    printf("The elements in the array are: ");

	for (int i = 0; i < 5; i++)
    {
		printf("%d ", arr[i]);
	}

	return 0;
}