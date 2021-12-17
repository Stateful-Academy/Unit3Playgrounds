//: [Previous](@previous)

import Foundation

// Level 1 - Basic Dictionary Operations

// Create a dictionary where the keys are people’s names and the values are ages
var peopleDictionary: [String: Int] = [
    "Matt": 24,
    "Sofia": 32,
    "Jerry": 56,
    "Alex": 19,
    "Susan": 32
]

// Read  the value for one of the keys and print it out
let sofiasAge = peopleDictionary["Sofia"]
print("Sofia is \(sofiasAge ?? 0)")

// Add a new person to the dictionary
peopleDictionary["Wendy"] = 75

// Update the age of one of the members
peopleDictionary["Alex"] = 20

// Delete a person from the dictionary
peopleDictionary["Jerry"] = nil


// Level 2 - A more realistic example
let moreRealisticPersonDictionary: [String: Person] = [
    "91871568": matt,
    "01874021": sofia,
    "10847827": jerry,
    "32897438": alex,
    "29034398": alison
]

let alex = moreRealisticPersonDictionary["32897438"]

if let alex = alex {
    print(alex)
} else {
    print("No person found for the ID 32897438")
}




// Level 3 - Nested Dictionaries

let nestedDictionary: [String: [String: Int]] = [
    "students": [
        "Jose": 26,
        "Michael": 32
    ],
    "teachers": [
        "Sarah": 54,
        "Deepak": 34
    ]
]

// What is Sarah's Age
let teachers = nestedDictionary["Teachers"]
let sarahsAge1 = teachers?["Sarah"]
// ... or ...
let sarahsAge2 = nestedDictionary["Teachers"]?["Sarah"]
if let sarahsAge1 = sarahsAge1,
   let sarahsAge2 = sarahsAge2 {
    print("Sarah is \(sarahsAge1) years old")
    print("Sarah is \(sarahsAge2) years old")
}

//: [Next](@next)
