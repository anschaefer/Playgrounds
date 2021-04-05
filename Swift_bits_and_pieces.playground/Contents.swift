//:# Swift Concepts Playground
//:## Accessing string components
import UIKit

let myName = "Max Mustermann"
let firstCharacterOfName = myName.startIndex
let fifthCharacterIndex = myName.index(firstCharacterOfName, offsetBy: 4)
let fifthCharacter = myName[fifthCharacterIndex]

if let firstSpace = myName.firstIndex(of: " ") {
    let surnameIndex = myName.index(firstSpace, offsetBy: 1)
    _ = myName[surnameIndex..<myName.endIndex]
}

myName.components(separatedBy: " ")[1]

let myNameArray = Array(myName)

//:## Closures

//: #1
let primes = [2.0, 3.0, 5.0, 7.0, 11.0]

let negativePrimes = primes.map({ -$0 })
let invertedPrime = primes.map() { 1.0/$0 }
let primeStrings = primes.map { String($0) }

let addOneToPrime = primes.map { $0 + 1 }
print(addOneToPrime)

//: #2
//func changeSign(value: Double) -> Double { return -value }
//var operand = (Double) -> Double
//operand = changeSign
//print("\(operand(4.0)")

//var operand: (Double) -> Double
//operand = (value: Double) -> Double { return -value}
//operand = { (value: Double) -> Double in return -value }
//operand = { (value) in return -value }
//operand = { -$0 }
//let someNegativeNumber = operand(5.0)

//:## Nested functions

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1}
    func stepBackward(input: Int) -> Int { return input - 1}
    return backward ? stepBackward : stepForward
}

let newFunc = chooseStepFunction(backward: true)
newFunc(2)

var someValue = 4
let moveNearerToZero = chooseStepFunction(backward: someValue > 0)
print("\(moveNearerToZero(someValue))")

//:## Inout Parameter

var foo = 0

func addOne(input: inout Int) {
    input += 1
}

addOne(input: &foo)

print("\(foo)")

//:## Enums

enum Suit {
    case spades
    case hearts
    case clubs(symbol: String)
    case diamonds
}

let cardColor: Suit = .clubs(symbol: "♣️")
switch cardColor {
case .clubs: print("Yes")
default: break
}


//:## Optional Chaning

struct Person {
    var residence: Residence?
}

struct Residence {
    var numberOfRooms = 4
}

var somePerson = Person()
somePerson.residence = Residence() //Assign residence instance to somePerson.residence
if let roomCount = somePerson.residence?.numberOfRooms { //Using ! for unwrapping causes runtime error
    print("SomePersons residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

//:## Date

let date = Date()
print("\(date)")


//:## Mutation

struct Stack {
    var items: [Int] = []
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
}


var stack = Stack()
stack.push(4)
stack.push(23)

stack.items

stack.pop()


// Closure recap!

// Step 1
//func calculation(n1: Int,n2: Int, operation: (Int, Int) -> Int) -> Int {
//    return operation(n1, n2)
//}
//
//func add(num1: Int, num2: Int) -> Int {
//    return num1 + num2
//}

// Step 2
func calculation(n1: Int,n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

print(calculation(n1: 2, n2: 3) { $0 + $1 })



// Extensions


extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.makeCircular()
