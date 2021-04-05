//: [Previous](@previous)
/*:
 # Challenge Time - More Optionals!
 
 Using your `myFavoriteSong` variable from the previous challenge, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."
 */

var favoriteSong: String? = nil

if let favoriteSong = favoriteSong {
    print("Favorite song is: \(favoriteSong)")
} else {
    print("I don't have a favorite song.")
}

/*:
 Change `myFavoriteSong` to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
 */
favoriteSong = "Tears in heaven"

if let favoriteSong = favoriteSong {
    print("Favorite song is: \(favoriteSong)")
} else {
    print("I don't have a favorite song.")
}
/*:
 Write a function called `printNickname` that takes an optional String as a parameter. Use the `guard` statement to try to unwrap the nickname, and if it fails print an error and return. Otherwise, print the unwrapped nickname.
 */

func printNickName(nickname: String?) {
    guard let nickname = nickname else {
        print("You dont't have a nickname")
        return
    }
    print("Your nickname is: \(nickname)")
}

printNickName(nickname: nil)

//: [Next](@next)
