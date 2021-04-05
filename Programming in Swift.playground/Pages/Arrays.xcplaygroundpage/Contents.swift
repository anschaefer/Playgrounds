//: [Previous](@previous)
/*:
 # Arrays
 ## An ordered, random-access collection.
 */
//let pastries = ["cookies", "cupcakes", "donuts", "pie"]
var pastries: [String] = []
pastries.append("cookie")
pastries += ["donut", "cupcake", "brownie", "pie"]

pastries.isEmpty
//pastries.removeAll()
//pastries.isEmpty

pastries.count
if let first = pastries.first, let min = pastries.min(), let max = pastries.max() {
    print(first, min, max)
}

let firstElement = pastries[1] // access items through subscripting
let firstThree = pastries[1...3]
// new array only has indices 1-3
// firstThree[0] won't work
// let fistThree = Array(pastries[1...3]) creates a new array with 0 starting indices

pastries.contains("donut")
pastries.contains("lasagna")

pastries.insert("tart", at: 0) // insert at specific location

let removedTwo = pastries.remove(at: 2)
let removedLast = pastries.removeLast()

removedTwo
removedLast
pastries

pastries[0...1] = ["brownie", "fritter", "tart"]
pastries

pastries.swapAt(1, 2)

for (index, pastry) in pastries.enumerated() {
    print(index, pastry)
}

if let tartIndex = pastries.firstIndex(of: "tart") {
    print("Tart is at index: \(tartIndex)")
}
//: [Next](@next)
