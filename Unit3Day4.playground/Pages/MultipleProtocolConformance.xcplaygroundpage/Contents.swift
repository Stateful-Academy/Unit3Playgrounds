//: [Previous](@previous)

import Foundation

// MARK: - Multiple Protocols
protocol Travelable {
    var milesPerHour: Double { get }
    
    func travel()
}

protocol Refuelable {
    func refuel()
}

protocol Floatable {
    func float()
}

// MARK: - Extensions
extension Travelable {
    func travel() {
        print("The Vehicle is traveling at \(milesPerHour) miles per hour")
    }
}

extension Refuelable {
    func refuel() {
        print("Refueling Vehicle...")
    }
}

extension Floatable {
    func float() {
        print("The Vehicle is floating!")
    }
}

// MARK: - Multiple Conformance
class Bike: Travelable {
    let milesPerHour: Double = 30
}

let bike = Bike()
bike.travel()

class Jet: Travelable, Refuelable {
    let milesPerHour: Double = 500
}

let jet = Jet()
jet.travel()
jet.refuel()


class Boat: Travelable, Refuelable, Floatable {
    let milesPerHour: Double = 60
}

let boat = Boat()
boat.travel()
boat.refuel()
boat.float()



// MARK: - Polymophism & Typecasting
func travelToAustralia(vehicle: Travelable) {
    vehicle.travel()
    
    if let refuelable = vehicle as? Refuelable {
        refuelable.refuel()
    }
    
    if let jet = vehicle as? Jet {
        print("We're FLYYING at \(jet.milesPerHour) miles per hour!!!")
    } else {
        print("We're going in the water now!")
        if let floatable = vehicle as? Floatable  {
            floatable.float()
            print("The vehicle is floating we're all good!")
        } else {
            print("We took on too much water.  We're not going to make it...")
            return
        }
    }
}

travelToAustralia(vehicle: bike)
print("\n")
travelToAustralia(vehicle: jet)
print("\n")
travelToAustralia(vehicle: boat)

//: [Next](@next)
