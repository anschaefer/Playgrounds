//: [Previous](@previous)
//:# Methods

enum Weekday: CaseIterable { // we could also use raw values but it does not suit weekdays very well
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    mutating func advance(by dayCount: UInt) { //mutating because we want to change the weekday
        let indexOfToday = Weekday.allCases.firstIndex(of: self)!
        let indexOfAdvancedDay = indexOfToday + Int(dayCount)
        
        self = Weekday.allCases[indexOfAdvancedDay % Weekday.allCases.count] //reassign self to be the value that has been calculated
    }
}

Weekday.allCases

var weekday: Weekday = .tuesday
weekday.advance(by: 8)

struct Time {
    var day: Weekday
    var hour: UInt
    
    init(day: Weekday, hour: UInt = 0) {
        self.day = day
        self.hour = hour
    }
    
    mutating func advance(byHours hourCount: UInt) {
        let (dayCount, hour) = (self.hour + hourCount).quotientAndRemainder(dividingBy: 24)
        day.advance(by: dayCount)
        self.hour = hour
    }
    
    func advanced(byHours hourCount: UInt) -> Time { // non-mutating verson of the advance function
        var time = self
        time.advance(byHours: hourCount)
        return time
    }
}

let time = Time(day: .monday) //var -> let (made the time instance immutable due to advanced function
//time.advance(byHours: 24 * 3 + 5) // won't work anymore because the instance is immutable
var advancedTime = time.advanced(byHours: 24 * 3 + 5)
time

//:# Type methods

enum Mathematics { //Caseless enumeration
    static func getLength(x: Double, y: Double) -> Double {
        return (x * x + y * y).squareRoot()
    }
}

Mathematics.getLength(x: 3, y: 4)

//: By making the struct an enum with no cases, we prevent someone from initalizing the extention like this:

//var mathematics = Mathematics()

//: which is confusing 
//: [Next](@next)
