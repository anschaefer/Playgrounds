//: [Previous](@previous)
/*:
 # INTRODUCTION TO FUNCTIONS
 
 Write a function named `printFullName` that takes two strings called `firstName` and `lastName`.  The function should print out the full name defined as `firstName` + " " + `lastName`. Use it to print out your own full name.
 */
func printFullName(firstName: String, lastName: String) {
    print(firstName + " " + lastName)
}

printFullName(firstName: "Andre", lastName: "Schaefer")
/*:
 Change the declaration of `printFullName` to have no argument label for either parameter.
 */
func printFullName(_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}

printFullName("Andre", "Schaefer")
/*:
 Write a function named `calculateFullName` that returns the full name as a string. Use it to store your own full name in a constant.
 */
func calculateFullName(_ firstName: String, _ lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName = calculateFullName("Andre", "Schaefer")
/*:
 Change `calculateFullName` to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the `count` property. Use this function to determine the length of your own full name.
 */
func calculateFullNameWithLength(_ firstName: String, _ lastName: String) -> (String, Int) {
    let fullName = firstName + " " + lastName
    return (fullName, fullName.count)
}

calculateFullNameWithLength("Andre", "Schaefer")
//: [Next](@next)
