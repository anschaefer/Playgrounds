import UIKit

func calculateBodyMassIndex(weight: Double, height: Double) -> Double {
    return weight/(height*height)
}

let height = 1.88
let weight = 82.2

let bmi = calculateBodyMassIndex(weight: weight, height: height)

if bmi > 25 {
    print("You are overweight")
} else if bmi <= 25 && bmi >= 18.5 {
    print("You are normal weight")
} else {
    print("You are underweight")
}




