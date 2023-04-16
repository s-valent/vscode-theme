#include <stdio.h>

// Define a constant using the #define preprocessor directive
#define MY_CONSTANT 42

// Define a struct to represent a person
struct Person {
    char name[20];
    int age;
};

// Declare a function prototype
int add_numbers(int num1, int num2);

int main() {
    // Declare and initialize variables of various types
    int x = 5;
    float y = 3.14;
    char c = 'A';
    const char* str = "Hello, world!";
    int arr[] = {1, 2, 3, 4, 5};
    int* ptr = arr;

    // Use various operators and expressions
    int sum = add_numbers(x, 10);
    printf("%d + 10 = %d\n", x, sum);
    printf("The value of y is %f\n", y);
    printf("The character c is '%c'\n", c);
    printf("The string is \"%s\"\n", str);
    printf("The value of arr[2] is %d\n", arr[2]);
    printf("The value of *ptr is %d\n", *ptr);

    // Use a struct to store data
    struct Person alice = {"Alice", 30};
    printf("Name: %s, Age: %d\n", alice.name, alice.age);

    // Use various control structures
    if (x < 10) {
        printf("x is less than 10\n");
    } else {
        printf("x is greater than or equal to 10\n");
    }

    int i;
    for (i = 0; i < 5; i++) {
        printf("arr[%d] = %d\n", i, arr[i]);
    }

    int j = 0;
    while (j < 5) {
        printf("ptr[%d] = %d\n", j, ptr[j]);
        j++;
    }

    // Use a switch statement to handle multiple cases
    int choice = 2;
    switch (choice) {
        case 1:
            printf("You chose option 1\n");
            break;
        case 2:
            printf("You chose option 2\n");
            break;
        case 3:
            printf("You chose option 3\n");
            break;
        default:
            printf("Invalid choice\n");
    }

    // Use a do-while loop to repeat an action until a condition is met
    int k = 0;
    do {
        printf("k = %d\n", k);
        k++;
    } while (k < 5);

    // Use a return statement to exit the function and return a value
    return 0;
}

// Define the function that was declared earlier
int add_numbers(int num1, int num2) {
    return num1 + num2;
}
