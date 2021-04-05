//: [Previous](@previous)
//:# Structures
typealias Miles = Double

struct Location {
    let x: Miles
    let y: Miles
    
    func getDistance(_ location: Location) -> Double {
        return abs(x - location.x) + abs(y - location.y)
    }
}

Location(x: 2, y: 3) // Location instance
Location(x: 0, y: 8.5)

let distance = Location(x: 4, y: 9).getDistance(Location(x: 5, y: 7))

struct Restaurant {
    let location: Location
    var deliveryDistance: Miles
    
    func willDeliver(to location: Location) -> Bool {
        return self.location.getDistance(location) <= deliveryDistance
    }
}

let restaurants = [
Restaurant(location: Location(x: 0, y: 0), deliveryDistance: 3),
Restaurant(location: Location(x: 5, y: 5), deliveryDistance: 2)
]

restaurants[0].willDeliver(to: Location(x: 1, y: 2))

extension Location {
    var canGetPizzaDelivery: Bool {
        return restaurants.contains { restaurant in
            restaurant.willDeliver(to: self)
        }
    }
}

Location(x: 3, y: 0).canGetPizzaDelivery
Location(x: 5, y: 3).canGetPizzaDelivery
Location(x: 2, y: 2).canGetPizzaDelivery


var restaurant = Restaurant(location: Location(x: 2, y: 3), deliveryDistance: 4)
var copyRestaurant = restaurant
restaurant.deliveryDistance = 5
copyRestaurant


//: [Next](@next)
