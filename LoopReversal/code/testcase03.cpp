#include <iostream>

int main()
{
    int arr[] = {10, 30, 20, 50, 40};
    int largest = arr[0];
    for (int i = 1; i < 5; i++)
    {
        if (arr[i] > largest)
            largest = arr[i];
    }
    std::cout << "Largest element: " << largest << std::endl;
    return 0;
}
