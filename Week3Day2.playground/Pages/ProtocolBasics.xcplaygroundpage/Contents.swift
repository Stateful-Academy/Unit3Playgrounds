//: [Previous](@previous)

import Foundation

// MARK: - Step 1: The Problem
class Car {
    
    func travel() {
        print("Vroom Vroom, the car is traveling down the road")
    }
}

class Plane {
    
    func travel() {
        print("Wooooooshhhh!  Plane taking off!")
    }
}

func travelToNewYork(car: Car) {
    car.travel()
}

func travelToNewYork(plane: Plane) {
    plane.travel()
}

let car = Car()
let plane = Plane()

travelToNewYork(car: car)
travelToNewYork(plane: plane)









// MARK: - STEP 2: The Solution (Protocols)
protocol Vehicle {
    func travel()
}

extension Car: Vehicle {}
extension Plane: Vehicle {}

func travelToNewYork(vehicle: Vehicle) {
    vehicle.travel()
}

travelToNewYork(vehicle: car)
travelToNewYork(vehicle: plane)







// MARK: - STEP 3: Adding new types is easy!
class Tractor: Vehicle {
    func travel() {
        print("We're traveling in a tractor")
    }
}

let tractor = Tractor()

travelToNewYork(vehicle: tractor)


// MARK: - Bonus: Clarification

// Explain why this doesn't work (protocols are abstract not concrete)
//let vehicle = Vehicle()

//: [Next](@next)
