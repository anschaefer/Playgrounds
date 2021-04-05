//: [Previous](@previous)
/*:
 # Closures
 Remember functions?
 */
typealias Operate = (Int, Int) ->  Int

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func printResultOf(_ a: Int, _ b: Int, operation: Operate) {
    let result = operation(a, b)
    print("Result is \(result)")
}

printResultOf(5, 3, operation: add)

//: A simple closure
//let multiply: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}

let multiply: (Int, Int) -> Int = { $0 * $1 }

let divide: Operate = { $0 / $1 }

multiply(4, 2)

printResultOf(6, 8, operation: multiply)
printResultOf(92, 3, operation: divide)

// Inline
printResultOf(92, 3, operation: { $0 - $1 })
// if last parameter, closures can be excluded
printResultOf(92, 3) { $0 - $1 } //trailing closure syntax

let voidClosure: () -> Void = { print("Yay swift") }

voidClosure()

//:## Closures and scope
func makeCountingClosure() -> () -> Int {
    var count = 0
    let incrementCount: () -> Int = {
        count += 1
        return count
    }
    return incrementCount
}

let counter1 = makeCountingClosure()
let counter2 = makeCountingClosure()

counter1()
counter2()
counter1()
counter2()
counter2()

//:## Closures and Collections
var names = ["Zeus", "Poseidon", "Ares", "Demeter"]

// sort() & sort(by:) - Sorts in place / mutates the original
names.sort()
names.sort(by: { (a, b) -> Bool in
    a > b
})

// sorted() & sorted(by:) - Returns a new collection that is sorted
let longToShortNames = names.sorted {
    $0.count > $1.count
}

longToShortNames
names

//:### Filter
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
var arrayForFilteredResults: [Double] = []

//: Filter as a for loop
for price in prices where price > 5 {
    arrayForFilteredResults.append(price)
}
arrayForFilteredResults

//: Filter with filter
let largePrices = prices.filter( { price -> Bool in
    return price > 5
})

//: or even shorter
let largePricesGreaterFive = prices.filter( { $0 > 5 })
largePricesGreaterFive

//:### Use map to mutate each element
//: With for loop
var arrayForSalePrices: [Double] = []
for price in prices {
    arrayForSalePrices.append(price * 0.9)
}
arrayForSalePrices

//: Closure solution
let salePrices = prices.map {price -> Double in
    return price * 0.9
}
salePrices

//:### Reduce (Array Version)
//: As a for loop
var doubleForSum = 0.0
for price in prices {
    doubleForSum += price
}
doubleForSum

//: With closures
let doubleForSumWithClosure = prices.reduce(0) {result, price -> Double in return result + price}
doubleForSumWithClosure

//: or super short
let doubleForSumWithClosureSuperShort = prices.reduce(0, +)
doubleForSumWithClosureSuperShort

//:### Reduce (Dictionary Version)
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

//: As a for loop
var arrayForStockValues: [Double] = []

for (price, quantity) in stock {
    let value = price * Double(quantity)
    arrayForStockValues.append(value)
}
arrayForStockValues

//: With closures
let stockSum = stock.reduce(into: []) {result, pair in
    result.append(pair.key * Double(pair.value))
}
stockSum



//: [Next](@next)
