//: [Previous](@previous)
/*:
 # Dictionaries
 ## A collection whose elements are key-value pairs.
 */
var emptyDictionary: [String: Int] = [:]

var namesAndPets = [
    "Ron" : "๐ Monkey",
    "Thor" : "๐จHammer",
    "Andre" : "๐ฆ Parrot",
    "Goku" : "โ๏ธ Flying Nimbus"
]
print(namesAndPets)

namesAndPets["Goku"] //Get value by key

let tomPet = namesAndPets["Tom"] ?? "No pet for Tom"

namesAndPets.isEmpty
namesAndPets.count

namesAndPets.updateValue("๐ฆ", forKey: "Andre")
print(namesAndPets)

namesAndPets["Andre"] = "๐ธ Frog"
print(namesAndPets)

namesAndPets["Calvin"] = "๐ฏ Tiger"

//namesAndPets.removeValue(forKey: "Goku")
namesAndPets["Goku"] = nil
print(namesAndPets)

for (character, pet) in namesAndPets {
    print("\(character) has a \(pet)")
}

for (name, _) in namesAndPets {
    print(name)
}

for pet in namesAndPets.values {
    print(pet)
}
//: [Next](@next)
