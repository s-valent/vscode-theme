#include <iostream>
using namespace std;

// struct declaration
struct Person {
    string name;
    int age;
};

// function declaration with default parameter
int add(int x, int y = 0) {
    return x + y;
}

// class declaration with private and public members
class Rectangle {
    private:
        int width;
        int height;
    public:
        // constructor
        Rectangle(int w, int h) {
            width = w;
            height = h;
        }
        // public method
        int area() {
            return width * height;
        }
};

// template function
template <typename T>
void print(T value) {
    cout << value << endl;
}

int main() {
    // struct instantiation
    Person* p1 = new Person;
    p1->name = "John";
    p1->age = 30;

    // function call with default parameter
    int sum1 = add(5);
    int sum2 = add(5, 10);

    // class instantiation
    Rectangle* r1 = new Rectangle(3, 4);

    // template function call
    print("Hello, world!");
    print(10);
    print(3.14);

    // dynamic memory allocation with new and delete operators
    int* arr = new int[5];
    for (int i = 0; i < 5; i++) {
        arr[i] = i;
    }
    delete[] arr;

    delete p1;
    delete r1;

    return 0;
}
