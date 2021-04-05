//: [Previous](@previous)
/*:
# Challenge Time! 😃
1. Create a structure named `Student` with three properties: first name, last name and grade.
2. Create a structure named `Classroom` with two properties: the class name, and an array of students.
3. Create a method that returns the highest grade in the classroom.
 Now make an extension on `Classroom` with a method named `curveGrades()`. This method should first find the difference between 100 and the highest grade, and add that amount to all students' scores. Then, it should sort the students array so it is ordered from the student with the highest score, to the one with the lowest.
 
 **Hint**: Remember that structures are value types, so iterating with `for student in students`, and attempting to modify `student`, won't work. (Try it; you'll get an error!) There are other solutions though!
 */
struct Student {
    let firstName: String
    let lastName: String
    var grade: Int
}

struct Classroom {
    let className: String
    var students: [Student]
    
    func getHighestGrade() -> Int? {
        return students.map { (student: Student) -> Int in return student.grade }.max()
    }
}

var classroom = Classroom(className: "Swift",
                          students: [
                            Student(firstName: "Jesse", lastName: "Catterwaul", grade: 80),
                            Student(firstName: "Andre", lastName: "Schaefer", grade: 95),
                            Student(firstName: "Salvador", lastName: "Dali", grade: 93),
                            Student(firstName: "Florian", lastName: "Wilde", grade: 75)
    ])

classroom.getHighestGrade()

extension Classroom {
    mutating func curveGrades() {
        guard let highestGrade = getHighestGrade() else {
            return
        }
        
        students = students.map { [curveAmount = 100 - highestGrade] student in // curve amount doesn't need to be calculated for every student (capture list of a closure to do something only once before parameter list
            var student = student
            student.grade += curveAmount
            return student
            }
            .sorted { (student1: Student, student2: Student) -> Bool in
                return student1.grade > student2.grade }
    }
}

classroom.curveGrades()
classroom.students
//: [Next](@next)
