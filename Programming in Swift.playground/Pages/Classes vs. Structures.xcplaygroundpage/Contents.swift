//: [Previous](@previous)
//:# Classes vs. Structures
class Actor { //former struct
    let name: String
    var filmography: [String] = []
    
    init(name: String, filmography: [String]) { //no init for structs needed (automatic)
        self.name = name
        self.filmography = filmography
    }
    
    func signOnForSequel(franchiseName: String) { //for struct, the function must be marked mutating
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

let gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")

let starTrekStar = gotgStar
starTrekStar.filmography.append("Star Trek")

//: It's best to declare class instances immutable if you can in order to prevent bugs

let avatarStar = starTrekStar //former var
let alienStar = Actor(name: "Sigourney Weaver", filmography: ["Alien"])

for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}

avatarStar.filmography
starTrekStar.filmography
gotgStar.filmography

//: ! Since all of the above instances are featuring Zoe Saldana, they should all be "in sync". Therefore, a class is the way to go !

/*:
 ### Classes
 1. reference types
 2. objects
 3. share
 4. mutable

 ### Structures
 1. value types
 2. values
 3. copy
 4. immutable
 */
//: [Next](@next)
