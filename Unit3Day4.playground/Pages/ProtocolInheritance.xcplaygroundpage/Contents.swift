//: [Previous](@previous)

import Foundation

protocol Travelable {
    
    func travel()
}

//extension Travelable {
//    func travel() {
//        print("The vehicle is traveling")
//    }
//}

protocol Flyable: Travelable {
    
    func fly()
}

class Jet: Flyable {
    
    func travel() {
        print("The Jet is traveling")
    }
    
    func fly() {
        print("The Jet is flying")
    }
}

//: [Next](@next)
