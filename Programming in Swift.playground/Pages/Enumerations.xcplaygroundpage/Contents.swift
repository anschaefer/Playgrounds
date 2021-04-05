//: [Previous](@previous)
//:# Enumerations
enum Month: Int {
    case january, february, march, april, may, june, july, august, september, october, november, december
}

let month: Month = .april

enum Semester {
    /// 🍁
    case fall
    case spring
    case summer
}

var semester: Semester = .fall
switch month {
case .august, .september, .october, .november, .december:
    semester = .fall
case .january, .february, .march, .april, .may:
    semester = .spring
case .june, .july:
    semester = .summer
}

let monthsUntilWinterBreak = Month.december.rawValue - month.rawValue
//: [Next](@next)
