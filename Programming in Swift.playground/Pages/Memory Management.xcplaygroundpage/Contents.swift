//: [Previous](@previous)
//:# Memory Management

class Person {
    let name: String
    weak var bestBuddy: Person? //former (no weak) -> resolves the memory leakage below
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("The memory of \(name) has been deallocated!")
    }
}

//var person: Person? = Person(name: "Thanos Jones")
//person = Person(name: "Ultron Bolton")
//person = nil

var catty: Person? = Person(name: "Catty Pantherwaul")
var loki: Person? = Person(name: "Loki Moakley")
loki?.bestBuddy = catty
catty?.bestBuddy = loki

//loki = nil //loki has not yet been deallocated
//catty?.bestBuddy = Person(name: "Thorothy Gale") // now all references are gone

//: Memory leak (cross referencing) Strong references is default
loki = nil
catty = nil

//: [Next](@next)
