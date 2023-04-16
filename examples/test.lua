-- import external module
local math = require("math")

-- function declaration
function add(x, y)
    return x + y
end

-- table declaration and initialization
local person = {
    name = "John",
    age = 30,
}

-- for loop
for i = 1, 5 do
    print("i = " .. i)
end

-- if-else statement
local x = 5
local y = 10
if x < y or x > 9 then
    print("x is less than y")
else
    print("x is greater than or equal to y")
end

-- repeat-until loop
local j = 5
repeat
    print("j = " .. j)
    j = j - 1
until j == 0

-- string interpolation
local name = "John"
local age = 30
print(name .. " is " .. age .. " years old")

-- function with variable number of arguments
function print_args(...)
    local args = {...}
    for i, arg in ipairs(args) do
        print(i .. ": " .. arg)
    end
end

-- call function with variable number of arguments
print_args("hello", "world", 42)

-- local function
local function square(x)
    return x * x
end

-- call local function
local num = 5
local squared_num = square(num)
print(num .. " squared is " .. squared_num)

-- coroutine
local co = coroutine.create(function()
    print("Coroutine started")
    coroutine.yield()
    print("Coroutine resumed")
end)

coroutine.resume(co)
print("Main thread resumed")
coroutine.resume(co)

-- file I/O
local file = io.open("test.txt", "w")
file:write("Hello, world!")
file:close()

file = io.open("test.txt", "r")
local contents = file:read("*all")
file:close()
print(contents)

-- use imported module
local random_num = math.random(1, 10)
print("Random number between 1 and 10: " .. random_num)
