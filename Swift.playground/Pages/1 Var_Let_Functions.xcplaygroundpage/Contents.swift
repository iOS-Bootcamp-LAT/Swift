import UIKit

var nombre2: String, nombre4: String // variable

let nombre3: String // constante


var nombreVariable = "Hello, playground "
var greeting: String = "Hello, playground"

// Variables and constants
//var greeting: String = "Hello, playground"
greeting = "TEST"

let test = "Hello"
// test = "Test"


// Strings

greeting = "TEST" + " TEST 2"


let price = 15

greeting = "Price: \(price) $"

greeting = """
    Price: \(price) $
    User: David
"""

// COMENTAIRIOS
/**
 EWTEW
 T
 EW
 TWE
 T
 */

// Functions

func functionWithOutParameters() -> String  {
    return "TEST"
}


print(functionWithOutParameters())


func functionNameWithParameters(_ name: String, age: Int) -> String  {
    return "Name: \(name), Age: \(age)"
}

func setNameToUser(_ user: String) {
    
}

// Overloading methods
func setName(byUser user: String = "Pablo") -> String {
    "Name: \(user)"
}

func setName(byType type: String = "Admin") -> String {
    "Type: \(type)"
}


print(setNameToUser("UserOne"))


print(setName(byType: "Customer"))


// Closures
let sum = { (a: Double, b: Double) -> Double in
    return a + b
}

let rest = { (a: Double, b: Double) -> Double in
    return a - b
}

print(sum(12, 25))

func printOperationResult(a: Double, b: Double, completion: (Double,Double) -> Double ) {
    print("Result: \(completion(a, b))")
}

printOperationResult(a: 58, b: 58, completion: sum)

printOperationResult(a: 58, b: 58) { (a: Double, b: Double) in
    return a * b
}


printOperationResult(a: 58, b: 58) { (a: Double, b: Double) in
    return a * 3
}

printOperationResult(a: 58, b: 58) { $0 * $1 }


printOperationResult(a: 98, b: 58, completion: rest)
