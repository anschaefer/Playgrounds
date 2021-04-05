//: [Previous](@previous)
//:# Inheritance

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [Grade] = []
}

let lisa = Student(firstName: "Lisa", lastName: "Graf")
let andre = Person(firstName: "André", lastName: "Schäfer")

lisa.firstName
andre.firstName

let mathGrade = Grade(letter: "B", points: 9, credits: 3)

lisa.grades.append(mathGrade)

class SchoolBandMember: Student {
    var minimumPracticeTime = 2
}

class StudentAthlete: Student {
    var isEligible: Bool {
        return grades.filter { $0.letter == "F" }.count > 3
    }
    
    override var grades: [Grade] {
//        get { return super.grades }
//        set {
//            super.grades = newValue
        didSet{
            if !isEligible {
                print("It's time to study!!!")
            }
        }
    }
}

//: ***Polymorphism*** (A superclass can be treated as its own type, or as any of its superclasses)

let jesse = SchoolBandMember(firstName: "Jesse", lastName: "Catterwaul")
let christina = StudentAthlete(firstName: "Christina", lastName: "Fast")

let array = [lisa, andre, jesse, christina] //Swift will recognize the array of type [Person]
//let array: [Student] = [lisa, andre, jesse, christina] //Won't work because of "andre"

let student = christina as Student //upcasting
let athlete = student as! StudentAthlete //forced downcasting, be carefull -> crash if not possible

func getEveningActivity(of student: Student) -> String {
    if let bandMember = student as? SchoolBandMember {
        return "Practicing for at least \(bandMember.minimumPracticeTime) hours"
    } else {
        return "Hitting the books!"
    }
}

getEveningActivity(of: lisa)
getEveningActivity(of: jesse)

let utterFailureGrade = Grade(letter: "F", points: 0, credits: 0)
athlete.grades.append(utterFailureGrade)
athlete.grades

//: [Next](@next)
