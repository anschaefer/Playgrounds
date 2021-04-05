import Foundation

var width: Float = 1.5
var height: Float = 2.3

//Number of buckets of paint that i need
var bucketsOfPaint: Int {
    set {
        let areaCovered = Double(newValue) * 1.5
        print("Number of buckets can cover: \(areaCovered)sqm")
    }
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets =  area / areaCoveredPerBucket
        let roundetBuckets = ceilf(numberOfBuckets)
        return Int(roundetBuckets)
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 3
