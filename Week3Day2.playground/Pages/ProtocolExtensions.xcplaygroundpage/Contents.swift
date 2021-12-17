//: [Previous](@previous)

import Foundation

protocol Vehicle: AnyObject {
    
    /// The speed of the vehicle in miles per hour
    var milesPerHour: Double { get }
    
    /// A boolean which indicates if the vehicle is broken
    var isBroken: Bool { get set }
    
    /// The name of the vehicle
    var name: String { get }
    
    /// Calculates the time to travel a given distance in hours
    /// - Returns: The time in hours it will take the vehicle to travel the given distance.
    func timeToTravel(miles: Double) -> Double?
}

extension Vehicle {
    
    // MARK: - Default Implementation
    func timeToTravel(miles: Double) -> Double? {
        if isBroken {
            print("Whoops! The \(name) is broken")
            return nil
        } else {
            print("The \(name) is traveling")
            return miles / milesPerHour
        }
    }
}

class Bus: Vehicle {
    
    var milesPerHour: Double = 60
    var isBroken: Bool = false
    
    var name: String {
        return "Bus"
    }
}

class Boat: Vehicle {
    
    var milesPerHour: Double = 45
    var isBroken: Bool = false
    
    var name: String {
        return "Boat"
    }
}

let bus = Bus()
let boat = Boat()

func travelToLondon(vehicle: Vehicle) {
    let milesToLondon = 120384.0
    if let hours = vehicle.timeToTravel(miles: milesToLondon) {
        print("Traveled to London.  It took \(hours) hours")
    } else {
        print("We never made it to London ):")
    }
}

travelToLondon(vehicle: bus)
print("\n")
travelToLondon(vehicle: boat)



//: [Next](@next)

