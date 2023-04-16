# import external module
using Random

# function declaration
function add(x, y)
    x + y
end

# struct declaration
struct Person
    name::String
    age::Int
end

# for loop
for i in 1:5
    println("i = ", i)
end

# if-else statement
x = 5
y = 10
if x < y
    println("x is less than y")
else
    println("x is greater than or equal to y")
end

# while loop
j = 5
while j > 0
    println("j = ", j)
    j -= 1
end

# string interpolation
name = "John"
age = 30
println("$name is $age years old")

# variable number of arguments
"hello"
function print_args(args...)
    for (i, arg) in enumerate(args)
        println("$i: $arg")
    end
end

# call function with variable number of arguments
print_args("hello", "world", 42)

# local function
function square(x)
    function inner()
        x * x
    end
    inner()
end

# call local function
num = 5
squared_num = square(num)
println("$num squared is $squared_num")

# coroutine
co = @task begin
    println("Coroutine started")
    yield()
    println("Coroutine resumed")
end

schedule(co)
println("Main thread resumed")
schedule(co)

# file I/O
open("test.txt", "w") do file
    write(file, "Hello, world!")
end

open("test.txt", "r") do file
    contents = read(file, String)
    println(contents)
end

# use imported module
random_num = rand(1:10)
println("Random number between 1 and 10: ", random_num)
