//: [Previous](@previous)
/*:
 # Challenge Time - Dictionaries!
 
 Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.
 */

var andre = [
    "name": "Andre",
    "profession": "Engineer",
    "country": "Germany",
    "state": "Berlin",
    "city": "Berlin"
]
andre

/*:
 You suddenly decide to move to Cleveland. Update your city to Cleveland, your state to Ohio, and your country to USA.
 */

andre.updateValue("Cleveland", forKey: "city")
andre["state"] = "Ohio"
andre.updateValue("USA", forKey: "country")
andre

/*:
 Given a dictionary in the above format, write a function that prints a given person's city and state.
 */

func printLocation(of person: [String: String]) {
    if let state = person["state"], let city = person["city"] {
        print("They live in \(city), \(state)")
    }
}
printLocation(of: andre)

//: [Next](@next)
