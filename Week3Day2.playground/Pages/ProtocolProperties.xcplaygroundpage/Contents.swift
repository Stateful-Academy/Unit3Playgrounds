//: [Previous](@previous)

import Foundation

protocol Vehicle: AnyObject {
    
    /// The speed of the vehicle in miles per hour
    var milesPerHour: Double { get }
    
    /// A boolean which indicates if the vehicle is broken
    var isBroken: Bool { get set }
    
    /// Calculates the time to travel a given distance in hours
    /// - Returns: The time in hours it will take the vehicle to travel the given distance.
    func timeToTravel(miles: Double) -> Double?
}

class Bus: Vehicle {
    
    var milesPerHour: Double = 60
    var isBroken: Bool = true
    
    func timeToTravel(miles: Double) -> Double? {
        if isBroken {
            print("The Bus is broken")
            return nil
        } else {
            print("Beep Beep, the bus is traveling")
            return miles / milesPerHour
        }
    }
}

class Boat: Vehicle {
    
    var milesPerHour: Double = 45
    var isBroken: Bool = false
    
    func timeToTravel(miles: Double) -> Double? {
        if isBroken {
            print("The boat is broken")
            return nil
        } else {
            print("The boat is traveling")
            return miles / milesPerHour
        }
    }
}

let bus = Bus()
let boat = Boat()

func fix(vehicle: Vehicle) {
    // Explain why this doens't work
//    vehicle.milesPerHour = 1000
    vehicle.isBroken = false
}

fix(vehicle: bus)
fix(vehicle: boat)

func travelToLondon(vehicle: Vehicle) {
    let milesToLondon = 120384.0
    if let hours = vehicle.timeToTravel(miles: milesToLondon) {
        print("Traveled to London.  It took \(hours) hours")
    } else {
        print("We never made it to London ):")
    }
}

travelToLondon(vehicle: bus)
travelToLondon(vehicle: boat)



//: [Next](@next)
