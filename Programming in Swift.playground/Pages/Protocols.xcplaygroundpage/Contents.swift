//: [Previous](@previous)
//:# Protocols

protocol Aloof {
    var name: String { get }
}

extension Aloof {
    var greeting: String {
        return "My name is \(name). Please leave me alone."
    }
}

protocol Animal {
    var name: String { get }

    init(name: String)

    func speak()
}

class Dog: Animal {
    let name: String
    var tricksLearnedCount: Int
    
    init(name: String, tricksLearnedCount: Int) {
        self.tricksLearnedCount = tricksLearnedCount
        self.name = name
    }
    
    convenience required init(name: String) {
        self.init(name: name, tricksLearnedCount: 0)
    }
    
    func speak() {
        print("Bow wow! My name is: \(name)!")
    }
}

protocol AloofAnimal: Aloof, Animal { }

extension AloofAnimal {
    func speak() {
        print("\(greeting) I must look at this wall.")
    }
}

class Cat {
    let name: String
    
    required init(name: String) {
        self.name = name
    }
}

extension Cat: AloofAnimal { }

let animals: [Animal] = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")]
for animal in animals {
    animal.speak()
}


//: [Next](@next)
