//: [Previous](@previous)
//:# Properties
struct Wizard {
    //Type property
    static let commonMagicalIngredients = [
    "Polyjuice Potion",
    "Eye of Haystack Needle",
    "The Force"
    ]
    
    //Instance Properties
    var firstName: String {
        willSet {
            print("\(firstName) will be set to \(newValue)")
        }
        didSet {
            if firstName.contains(" ") {
                print("No spaces allowed! \(firstName) is not a first name. Reverting name to \(oldValue)")
                firstName = oldValue
            }
        }
    }
    
    var lastName: String
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            let nameSubstrings = newValue.split(separator: " ")
            
            guard nameSubstrings.count >= 2 else {
                print("\(newValue) is not a full name.")
                return
            }
            
            let nameStrings = nameSubstrings.map(String.init)
            firstName = nameStrings.first!
            lastName = nameStrings.last!
        }
    }
    
    var magicalCreature = ""
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "GreyJoy")
wizard.firstName = "Hermione"
wizard.lastName = "Kenobi"
wizard.fullName

wizard.fullName = "SeverusWenderlich"

wizard.fullName = "Harry Potter"
wizard

wizard.firstName = "Merlin Rincewind"
wizard

wizard.firstName = "Merlin"
wizard

Wizard.commonMagicalIngredients
//: [Next](@next)
