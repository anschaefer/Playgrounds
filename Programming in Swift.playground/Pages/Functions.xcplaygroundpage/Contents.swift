//: [Previous](@previous)
//:# Functions
func printMeow() {
    print("Meow!")
}

printMeow()

func printMultipleOfFive(multiplier: Int) {
    print("5 * \(multiplier) = \(5 * multiplier)")
}

printMultipleOfFive(multiplier: 10)

func printMultipleOf(number: Int, multiplier: Int) {
    print("\(number) * \(multiplier) = \(number * multiplier)")
}

printMultipleOf(number: 4, multiplier: 2)

func multiply(_ factor1: Int, _ factor2: Int) -> Int {
    return factor1 * factor2
}

let result = multiply(7, 3)

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let results = multiplyAndDivide(4, by: 2)
let (product, quotient) = results
product
quotient

func getValue() -> Int {
    return 23
}

func getValue() -> String {
    return "Hello"
}

let intValue: Int = getValue()

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

var function = add

function(4,2)

func subtract(number1: Int, number2: Int) -> Int {
    return number1 - number2
}

function = subtract
function(5,7)

typealias Operate = (Int, Int) -> Int

func printResult(_ operation: Operate, _ a: Int, _ b: Int ) {
    let result = operation(a, b)
    print(result)
}

printResult(add, 4, 5)


//: [Next](@next)
