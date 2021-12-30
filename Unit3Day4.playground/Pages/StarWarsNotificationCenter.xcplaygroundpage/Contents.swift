import UIKit
import Foundation

let order66Notification = NSNotification.Name(rawValue: "Order66")

class CloneTrooper {
    
    var idNumber: Int = Int.random(in: 0...1000)
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(executeOrder66), name: order66Notification, object: nil)
    }
    
    @objc func executeOrder66() {
        print("Clone \(idNumber) now murdering jedi scum")
    }
}

class Jedi {
    
    let name: String
    
    init(name: String) {
        self.name = name
        NotificationCenter.default.addObserver(self, selector: #selector(runFromClones), name: order66Notification, object: nil)
    }
    
    @objc func runFromClones() {
        print("\(name) is running from the clones")
    }
}

let trooper1 = CloneTrooper()
let trooper2 = CloneTrooper()
let trooper3 = CloneTrooper()
let yoda = Jedi(name: "Yoda")
let obiwan = Jedi(name: "Obi-Wan")

func sendSignalToExecuteOrder66() {
    NotificationCenter.default.post(name: order66Notification, object: nil)
}

sendSignalToExecuteOrder66()

