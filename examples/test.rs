// import external crate
extern crate rand;

// import specific module from external crate
use rand::Rng;

// struct declaration
struct Person {
    name: String,
    age: u32,
}

// function declaration with default parameter
fn add(x: u32, y: u32) -> u32 {
    x + y
}

// enum declaration and implementation
enum Shape {
    Rectangle { width: u32, height: u32 },
    Circle { radius: f64 },
}

impl Shape {
    fn area(&self) -> f64 {
        match self {
            Shape::Rectangle { width, height } => (*width as f64) * (*height as f64),
            Shape::Circle { radius } => std::f64::consts::PI * radius * radius,
        }
    }
}

fn main() {
    // struct instantiation
    let p1 = Person { name: String::from("John"), age: 30 };

    // function call with named arguments
    let sum1 = add(x=5, y=10);
    let sum2 = add(5, 10);

    // enum instantiation
    let r1 = Shape::Rectangle { width: 3, height: 4 };
    let c1 = Shape::Circle { radius: 2.5 };

    // method call
    let area1 = r1.area();
    let area2 = c1.area();

    // if-else statement
    let x = 5;
    let y = 10;
    if x < y {
        println!("x is less than y");
    } else {
        println!("x is greater than or equal to y");
    }

    // loop with iterator
    let arr = [1, 2, 3, 4, 5];
    for i in arr.iter() {
        println!("i = {}", i);
    }

    // string interpolation
    let name = "John";
    let age = 30;
    println!("{} is {} years old", name, age);

    // vector and closure
    let vec = vec![1, 2, 3, 4, 5];
    let vec_sum = vec.iter().fold(0, |acc, x| acc + x);

    // match expression
    let num = 5;
    match num {
        1 => println!("num is 1"),
        5 => println!("num is 5"),
        _ => println!("num is not 1 or 5"),
    }

    // use external crate
    let mut rng = rand::thread_rng();
    let random_num = rng.gen_range(1..=10);
    println!("Random number between 1 and 10: {}", random_num);
}
