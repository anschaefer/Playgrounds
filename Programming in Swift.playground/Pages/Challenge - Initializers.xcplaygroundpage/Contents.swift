//: [Previous](@previous)
/*:
 # Challenge Time! 😃

    Create a class named `Animal` that has…
    1. a single stored property named `name`, that is a `String`
    2. a required initializer that takes `name` as a parameter
    3. a function `speak()` that does nothing.
*/
class Animal {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func speak() {
        
    }
}
/*:
 Create a class named `Dog` that…
 1. inherits from `Animal`
 2. has a property that stores how many tricks it has learned
 3. implements the required initializer, defaulting the trick count to `0`, and calling `speak()` at the end
 4. overrides the function `speak()` to greet you and says its name
 */
class Dog: Animal {
    var tricksLearnedCount: Int
    
    convenience required init(name: String) {
        self.init(name: name, tricksLearnedCount: 0)
    }
    
    init(name: String, tricksLearnedCount: Int) {
        self.tricksLearnedCount = tricksLearnedCount
        super.init(name: name)
        speak()
    }
    
    override func speak() {
        print("Bow wow! My name is: \(name)!")
    }
    
}

Dog(name: "Shadow")
/*:
 Add a second (non-required) initializer to `Dog` that takes both the `name` and `numTricksLearned` as parameters. Then call this initializer from the required initializer.
 */
Dog(name: "Chance", tricksLearnedCount: 3)
/*:
 In an extension, add a convenience initializer to `Dog` that defaults the dog's name to your favorite dog's name, with however many tricks the dog has learned.
 */
extension Dog {
    convenience init(tricksLearnedCount: Int = .max) {
        self.init(name: "Tramp", tricksLearnedCount: tricksLearnedCount)
    }
}

Dog()
//: [Next](@next)
