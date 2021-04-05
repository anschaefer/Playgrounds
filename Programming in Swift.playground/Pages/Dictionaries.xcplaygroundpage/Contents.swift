//: [Previous](@previous)
/*:
 # Dictionaries
 ## A collection whose elements are key-value pairs.
 */
var emptyDictionary: [String: Int] = [:]

var namesAndPets = [
    "Ron" : "🐒 Monkey",
    "Thor" : "🔨Hammer",
    "Andre" : "🦜 Parrot",
    "Goku" : "☁️ Flying Nimbus"
]
print(namesAndPets)

namesAndPets["Goku"] //Get value by key

let tomPet = namesAndPets["Tom"] ?? "No pet for Tom"

namesAndPets.isEmpty
namesAndPets.count

namesAndPets.updateValue("🦉", forKey: "Andre")
print(namesAndPets)

namesAndPets["Andre"] = "🐸 Frog"
print(namesAndPets)

namesAndPets["Calvin"] = "🐯 Tiger"

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
