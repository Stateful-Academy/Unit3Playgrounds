//: [Previous](@previous)

import Foundation

func divide(numerator: Double, denominator: Double) throws -> Double {
    if denominator == 0 {
        throw NSError(domain: "MathError", code: 500, userInfo: ["description": "Division by 0 is not allowed"])
    } else {
        return numerator / denominator
    }
}

// MARK: - Handling throwing functions
// BAAAAAD
let solution1 = try! divide(numerator: 4, denominator: 2)
print(solution1)

// Not the worst
if let solution2 = try? divide(numerator: 4, denominator: 2) {
    print(solution2)
} else {
    print("Division failed")
}

// GOOD
do {
    let solution3 = try divide(numerator: 12, denominator: 6)
    print(solution3)
} catch {
    print("Error dividing \(error)")
}

// MARK: - Passing on the error using throws

func doMath() throws -> Double {
    let solution = try divide(numerator: 12, denominator: 0)
    return solution
}

// Kicking the can down the road
do {
    print(try doMath())
} catch {
    print(error)
}


// MARK: - BONUS - Writing our own throwing function
// Optional Returns
func findWholeSquareRoot(number: Int) -> Int? {
    guard number != 0 else { return nil }
    guard number > 0 else { return nil }
    guard number <= 144 else { return nil }
    for value in 1...12 {
        let square = value * value
        if square == number {
            return value
        }
    }
    return nil
}

findWholeSquareRoot(number: 144)
findWholeSquareRoot(number: 34)
findWholeSquareRoot(number: 49)

// Throwing Version
enum SquareRootError: Error {
    case negativeNumberError
    case outOfRange
    case noWholeSquareRoot
}

func findWholeSquareRootThrowing(number: Int) throws -> Int {
    if number < 0 {
        throw SquareRootError.negativeNumberError
    }
    guard number <= 144 else {
        throw SquareRootError.outOfRange
    }
    for value in 1...12 {
        let square = value * value
        if square == number {
            return value
        }
    }
    throw SquareRootError.noWholeSquareRoot
}

do {
    let squareRoot = try findWholeSquareRootThrowing(number: -4)
    print(squareRoot)
} catch {
    print("Error finding square root \(error)")
}

//: [Next](@next)
