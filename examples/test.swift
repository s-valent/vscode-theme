// import external module
import Foundation

// function declaration
func add(x: Int, y: Int) -> Int {
    return x + y
}

// struct declaration
struct Person {
    var name: String
    var age: Int
}

// class declaration
class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("\(name) makes a sound")
    }
}

// enum declaration
enum Direction {
    case north
    case south
    case east
    case west
}

// for loop
for i in 1...5 {
    print("i = \(i)")
}

// if-else statement
let x = 5
let y = 10
if x < y {
    print("x is less than y")
} else {
    print("x is greater than or equal to y")
}

// while loop
var j = 5
while j > 0 {
    print("j = \(j)")
    j -= 1
}

// string interpolation
let name = "John"
let age = 30
print("\(name) is \(age) years old")

// function with variable number of arguments
func printArgs(_ args: Any...) {
    for (index, arg) in args.enumerated() {
        print("\(index): \(arg)")
    }
}

// call function with variable number of arguments
printArgs("hello", "world", 42)

// local function
func square(_ x: Int) -> Int {
    func inner() -> Int {
        return x * x
    }
    return inner()
}

// call local function
let num = 5
let squaredNum = square(num)
print("\(num) squared is \(squaredNum)")

// struct instantiation
let person = Person(name: "Alice", age: 30)
print("\(person.name) is \(person.age) years old")

// class instantiation
let dog = Animal(name: "Buddy")
dog.makeSound()

// enum usage
let direction = Direction.north
switch direction {
case .north:
    print("Going north")
case .south:
    print("Going south")
case .east:
    print("Going east")
case .west:
    print("Going west")
}

// optional handling
var optionalValue: Int? = 42
if let value = optionalValue {
    print("Value is \(value)")
}

// guard statement
func processValue(_ value: Int?) {
    guard let unwrapped = value else {
        print("Value is nil")
        return
    }
    print("Processing \(unwrapped)")
}

// file I/O
let filePath = "test.txt"
let content = "Hello, world!"

do {
    try content.write(toFile: filePath, atomically: true, encoding: .utf8)
    let fileContent = try String(contentsOfFile: filePath, encoding: .utf8)
    print(fileContent)
} catch {
    print("Error: \(error)")
}

// use imported module
let randomNum = Int.random(in: 1...10)
print("Random number between 1 and 10: \(randomNum)")

// closure
let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
print("Doubled: \(doubled)")

// protocol
protocol Greetable {
    func greet() -> String
}

extension Person: Greetable {
    func greet() -> String {
        return "Hello, I'm \(name)"
    }
}

let greeting = person.greet()
print(greeting)

