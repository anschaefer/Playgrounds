//: [Previous](@previous)
/*:
 # Challenge Time - Closures! 😎
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
 */

let names = ["Bob", "Tim", "Andre", "Catie", "Sean", "Conor"]

//names.reduce("") { (result: String, name: String) -> String in
//    return result + " " + name
//}

//names.reduce("") { result, name in
//    return result + " " + name
//}

names.reduce("") { $0 + " " + $1}

/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
 */
//let filteredNames = names.filter { (name: String) -> Bool in
//    return name.count > 4
//    }
//    .reduce("") { $0 + " " + $1 }

//let filteredNames = names.filter { name in
//    return name.count > 4
//    }.reduce("") { $0 + " " + $1}

let filteredNames = names.filter { $0.count > 4 }.reduce("") { $0 + " " + $1 }
filteredNames
/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
 */
let namesAndAges = ["Andre": 28, "Lisa": 26, "Hagen": 30, "Niklas": 17]

//let peopleUnder18 = namesAndAges.filter { (name: String, age: Int) -> Bool in
//    return age < 18
//}

let peopleUnder18 = namesAndAges.filter { (name, age) in
    return age < 18
}

//namesAndAges.filter { $0.value < 18 }

peopleUnder18
/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
 */
//let adults = namesAndAges.filter { (name: String, age: Int) -> Bool in
//    return age >= 18
//    }
//    .map { (name: String, age: Int) -> String in
//        return name
//}

//let adults = namesAndAges.filter { name, age in
//    return age > 18
//    }
//    .map { name, age in
//        return name
//}

let adults = namesAndAges.filter { $0.value > 18 }.map { $0.key }

adults

//: [Next](@next)
