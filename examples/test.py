# Import a module and use its function
import math
print(math.sqrt(25))

MY_CONSTANT = 42

# Define a class with instance variables and methods
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    @property
    def name_and_age(self):
        return (self.name, self.age)

    def greet(self):
        print(rf"Hello, my name is {self.name} and I am {self.age} years old.")


# Create an instance of the Person class and call its method
person = Person("Alice", 30)
person.greet()
print(person.name_and_age)

# Use a star (*) in function arguments to accept variable numbers of arguments
def multiply(*args):
    result = 1
    for arg in args:
        result *= arg
    return result

print(multiply(2, 3, 4))

# Use a generator expression to create a sequence of values
squares = (x**2 for x in range(10))
print(list(squares))

# Use a context manager to handle resources
with open("myfile.txt", "w") as f:
    f.write("Hello, world!\n")

# Use list comprehension to create a list from an iterable
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)

# Use a set to store unique values
my_set = {1, 2, 3, 4, 5}
my_set.add(6)
my_set.remove(3)
print(my_set)

# Use a tuple to store an immutable sequence of values
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[0])

# Use a try-except-finally block to handle errors and cleanup resources
try:
    f = open("myfile.txt", "r")
    print(f.read())
except FileNotFoundError:
    print("File not found.")
finally:
    f.close()

# Use a boolean expression to control program flow
x = 5
y = 10
if x < y:
    print("x is less than y")
else:
    print("x is greater than or equal to y")


name = "Alice"
age = 30
print("My name is {} and I am {} years old.".format(name, age))


with open("example.txt", "w") as f:
    f.write("Hello, world!")

if __name__ == "__main__":
    pass

True or False and None

a = r"\uhi[hello]$$"
b = 2j
