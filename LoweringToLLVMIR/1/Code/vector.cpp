#include <iostream>
#include <vector>
using namespace std;

int main()
{
    // Declare a vector 'a' of integers
    vector<int> a;

    // Initialize vector 'a' with values from 1 to 7
    for (int i = 1; i <= 7; i++)
        a.push_back(i);

    // Print the output of vector 'a' using iterators begin() and end()
    cout << "Output: ";
    for (auto i = a.begin(); i != a.end(); ++i)
        cout << *i << " ";
    cout << endl;

    return 0;
}