// variable declaration and initialization
let x = 5;
const y = 10;

// arithmetic operators
let sum = x + y;
let difference = x - y;
let product = x * y;
let quotient = x / y;
let remainder = x % y;

// comparison operators
let isLessThan = x < y;
let isGreaterThan = x > y;
let isEqualTo = x == y;
let isNotEqualTo = x != y;
let isLessThanOrEqualTo = x <= y;
let isGreaterThanOrEqualTo = x >= y;

// logical operators
let andResult = isLessThan && isGreaterThan;
let orResult = isEqualTo || isNotEqualTo;
let notResult = !isEqualTo;

// if-else statement
if (x < y) {
    console.log("x is less than y");
} else {
    console.log("x is greater than or equal to y");
}

// switch statement
let dayOfWeek = "Monday";
switch (dayOfWeek) {
    case "Monday":
        console.log("It's Monday!");
        break;
    case "Tuesday":
        console.log("It's Tuesday!");
        break;
    default:
        console.log("It's not Monday or Tuesday.");
}

// while loop
let i = 0;
while (i < 5) {
    console.log("i =", i);
    i++;
}

// do-while loop
let j = 0;
do {
    console.log("j =", j);
    j++;
} while (j < 5);

// for loop
for (let k = 0; k < 5; k++) {
    console.log("k =", k);
}

// arrays
let numbers = [1, 2, 3, 4, 5];
let names = ["Alice", "Bob", "Charlie"];
numbers.push(6);
names.pop();

// objects
let person = {
    name: "Alice",
    age: 30,
    isStudent: true
};

// functions
function greet(name) {
    console.log("Hello, " + name + "!");
}

greet("Alice");

// classes
class Rectangle {
    constructor(width, height) {
        this.width = width;
        this.height = height;
    }

    getArea() {
        return this.width * this.height;
    }
}

let rectangle = new Rectangle(5, 10);
console.log("Area:", rectangle.getArea());

// callbacks
function add(x, y, callback) {
    let sum = x + y;
    callback(sum);
}

add(1, 2, function(result) {
    console.log("Result:", result);
});

// promises
function multiply(x, y) {
    return new Promise(function(resolve, reject) {
        let product = x * y;
        if (product >= 0) {
            resolve(product);
        } else {
            reject("Product is negative.");
        }
    });
}

multiply(2, 3)
    .then(function(result) {
        console.log("Result:", result);
    })
    .catch(function(error) {
        console.log("Error:", error);
    });

// async/await
async function calculate() {
    let result1 = await multiply(2, 3);
    let result2 = await multiply(result1, 4);
    let result3 = await multiply(result2, 5);
    console.log("Result:", result3);
}

calculate();
