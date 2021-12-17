//: [Previous](@previous)

import Foundation

struct Contact: Codable {
    let name: String
    let phoneNumber: String
}

func singleContactFileURL() -> URL? {
    // 1. Get the address to save/load a file to/from
    guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
    let url = documentsDirectory.appendingPathComponent("singleContact.json")
    return url
}


func save(contact: Contact, url: URL) {
    do {
        // 2. Convert the swift struct or class into raw data
        let data = try JSONEncoder().encode(contact)
        // 3. Save the data to the address from step 1
        try data.write(to: url)
    } catch let error {
        print(error)
    }
}

struct Model: Codable {
    let prop: String
}

func save(model: Model, url: URL) {
    do {
        // 1. Get the address to save a file to
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let url = documentsDirectory.appendingPathComponent("filename.json")
        // 2. Convert the swift struct or class into JSON data
        let data = try JSONEncoder().encode(model)
        // 3. Save the data to the address from step 1
        try data.write(to: url)
    } catch let error {
        print(error)
    }
}

func loadData(url: URL) -> Contact? {
    // 1. Get the address your data is saved at
    guard let url = singleContactFileURL() else { return nil }
    do {
        let data = try Data(contentsOf: url)
        let contact = try JSONDecoder().decode(Contact.self, from: data)
        return contact
    } catch let error {
        print(error)
        return nil
    }
}




let sasha = Contact(name: "Sasha", phoneNumber: "908-875-4567")

if let fileURL = singleContactFileURL() {
    
    save(contact: sasha, url: fileURL)

    // Later...
    let sashaLoadedFromFile = loadData(url: fileURL)
    
    if let sashaLoadedFromFile = sashaLoadedFromFile {
        print(sashaLoadedFromFile)
    } else {
        print("Data was not retrieved for contact")
    }
}

//: [Next](@next)
