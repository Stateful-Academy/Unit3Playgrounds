import Foundation

// MARK: - Delegating Object (townspeople)
var townIsOnFire: Bool = true

// TODO: 1. Define a Delegate Protocol
protocol TownsPersonDelegate: AnyObject {
    func fireWasReported()
}

class TownsPerson {
    
    // TODO: 2. Hold an instance of the delegate as a weak variable
    weak var delegate: TownsPersonDelegate?
    
    // TODO: 3. Call the appropriate delegate method when a trigger occurs
    func seeFire() {
        delegate?.fireWasReported()
    }
}


// MARK: - Delegate Object (fire department)

// TODO: 1. Conform to the delegate protocol
class SanJoseFireDepartment: TownsPersonDelegate {
    
    // TODO: 2. Implement delegate protocol methods
    func fireWasReported() {
        townIsOnFire = false
    }
}

let townsPerson = TownsPerson()
let fireDepartement = SanJoseFireDepartment()

// TODO: 3. Assign the delegate variable to an instance of the delegate object
townsPerson.delegate = fireDepartement

print("Is there a fire? \(townIsOnFire ? "Yes" : "No")")
townsPerson.seeFire()
print("Is there a fire? \(townIsOnFire ? "Yes" : "No")")


