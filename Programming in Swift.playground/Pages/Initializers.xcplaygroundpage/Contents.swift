//: [Previous](@previous)
//:# Initializers

class Person {
    var firstName: String
    var lastName: String
    
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [String] = []
}

extension Student {
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
        grades = transfer.grades
    }
}

class StudentAthlete: Student {
    var sports: [String]
    
    // Order is crucial,first we need to give sports a value and only after we can pass values to superclass initializer
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }
    
    required convenience init(firstName: String, lastName: String) { //override would also be possible
//      self.sports = []
//      super.init(firstName: firstName, lastName: lastName)
        self.init(firstName: firstName, lastName: lastName, sports: []) // performs the same as the two lines above
    }
    
    convenience init(transfer: StudentAthlete) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName, sports: transfer.sports)
        grades = transfer.grades
    }
}

let rudy = StudentAthlete(firstName: "Daniel", lastName: "Ruettiger", sports: ["Football"])

/*:
 Swift has a two phase initialization. First instances need to initialize all their stored properties and the process flows from bottom to top (superclass)
 
 Initializers cannot be properly inherited like properties
 */

StudentAthlete(firstName: "Bernie", lastName: "Kosar")
StudentAthlete(transfer: rudy).sports



//: [Next](@next)
