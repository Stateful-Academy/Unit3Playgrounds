import Foundation

public struct Person: Codable {
    let name: String
    let age: Int
    let hobbies: [String]
    let enjoysPinappleOnPizza: Bool
}

public let matt = Person(name: "Matt",
                  age: 24,
                  hobbies: ["Soccer", "Playing Piano", "Running"],
                  enjoysPinappleOnPizza: false)

public let sofia = Person(name: "Sofia",
                   age: 32,
                   hobbies: ["Pickleball", "Reading", "Yoga"],
                   enjoysPinappleOnPizza: false)

public let jerry = Person(name: "Jerry",
                   age: 56,
                   hobbies: ["Photography", "Hiking"],
                   enjoysPinappleOnPizza: true)

public let alex = Person(name: "Alex",
                  age: 19,
                  hobbies: ["Spikeball"],
                  enjoysPinappleOnPizza: false)

public let alison = Person(name: "Alison",
                    age: 40,
                    hobbies: ["Watching TV", "Walking her dog"],
                    enjoysPinappleOnPizza: true)

