//: [Previous](@previous)

import Foundation


var num = 15

if num == 12 {
    print("It is \(num)")

} else if  num == 15  {
    print("15 It is \(num)")
} else {
    print("It is not")
}

var age = 1

while age <= 10 {
    print("Age: \(age)")
    age += 1
}

/*repeat {
    print("Age: \(age)")
    age += 1
} while (age <= 10)
*/
var array = [1, 2, 3, 4 ,5]

for item in array {
    print(item)
}



array.forEach { (item) in

    print("Foreach: \(item)")
}

for item in array.enumerated() {
    print("Element at:", item.offset, " Value:", item.element)
}


let country = "Brasil"


switch country {
    
case "Bolivia", "Brasil":
    print("The country is Bolivia or Brasil")
    
case "Mexico":
    print("The country is Mexico")
    
case "Peru":
    print("The country is Peru")
          
default:
    print("It is not a country")
    
}


var number = 20

switch number {
    
case 1...10:
    print("enter 1 - 10")
    
case 11...20:
    print("enter 11 - 20")
default:
    print("default")
}



// GUARDS
var numberTwo = 17

func ifFunction() {
    if numberTwo == 16 {
        print("IF")
    }
}

var email = ""
var pass = ""

func loginGuard() {
    guard !email.isEmpty, !pass.isEmpty else { return }

    
    // login()
}

func login() {
    if email.isEmpty {
        print("invalid email")
       return
    }
    
    if pass.isEmpty {
        print("invalid email")
       return
    }
    
    // login()
}




func guardFunction() {
    guard numberTwo == 16 else {
        print("Guard")
        return
    }

    print("Cotinue")

}

guardFunction()



// Ternary Operator
var str = "a"

func testWithIF() -> Bool {
    if str == "a" {
        return true
    } else {
        return false
    }
}

func test() -> Bool {
    return str == "a"
}

func testTwo() -> Bool {
    return str == "a" || str == "b" ? true : false
}
