//: [Previous](@previous)
//:# Switch Statements
let number = Int.max
var numberDescription = ""

switch number {
case 0:
    numberDescription = "Zero"
case 1...9:
    numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0:
    numberDescription = "Negative"
case _ where number > .max / 2:
    numberDescription = "Very large!"
default:
    numberDescription = "No description"
}

var numberIsEven = false

switch number % 2 { //switching on an expression
case 0:
    numberIsEven = true
default:
    numberIsEven = false
}

let animalString = "Elephant"
var isHousePet = false

switch animalString {
case "Dog","Cat", "Hamster":
    isHousePet = true
default:
    isHousePet = false
}

let coordinates = (2.0, 2.0)
var pointCategory = ""

switch coordinates {
case (0,0):
    pointCategory = "Origin"
case (let x, 0):
    pointCategory = "On the x-axis at \(x)"
case (0, let y):
    pointCategory = "On the y-axis at \(y)"
case let (x, y) where y == x * x:
    pointCategory = "Along y = x ^ 2"
case _ where coordinates.0 == coordinates.1:
    pointCategory = "Both are the same"
case let(x, y):
    pointCategory = "No zero coordinates. x = \(x), y = \(y)"
}
//: [Next](@next)
