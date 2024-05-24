#include <iostream>
using namespace std;

// create a class
class Test
{
   public:
    double length;
    double breadth;
    double height;

    double calculateArea()
    {
        return length * breadth;
    }

    double calculateVolume()
    {
        return length * breadth * height;
    }
};

int main()
{
    // create object of Test class
    Test a;

    // assign values to data members
    a.length = 42.5;
    a.breadth = 30.8;
    a.height = 19.2;

    // calculate and display the area and volume of the room
    cout << "Area =  " << a.calculateArea() << endl;
    cout << "Volume =  " << a.calculateVolume() << endl;

    return 0;
}