//: [Previous](@previous)
/*:
 # Optionals
 ## A type that represents either a wrapped value or nil, the absence of a value.
*/
var catName: String?
catName = "Leia"
print(catName)
catName = nil

var res: Int? = 30
print(res)

var dogName: String? = "Kolja"
var dogAge: Int? = 12

var unwrappedDogName = dogName!
print("The dog's name is \(unwrappedDogName)")

//:## Optional Binding
if let dogName = dogName { //common to name the binding exactly like the optional
    if let dogAge = dogAge {
        print("The dog is \(dogName) and he is \(dogAge)")
    }
} else {
    print("No dog name or dog age")
}

func printDogInfo(dogName: String?, dogAge: Int?) {
    guard let dogName = dogName, let dogAge = dogAge else {
        print("No dog name or dog age")
        return
    }
    print("The dog is \(dogName) and he is \(dogAge)")
}

printDogInfo(dogName: "Kolja", dogAge: 13)
printDogInfo(dogName: nil, dogAge: 13)


var optionalInt: Int? = 10
var requiredResult = optionalInt ?? 0 //nil-coalescing operator

//: [Next](@next)
