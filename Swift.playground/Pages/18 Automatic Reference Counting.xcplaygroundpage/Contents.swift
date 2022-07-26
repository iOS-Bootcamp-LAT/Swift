//: [Previous](@previous)

import Foundation

// MARK: - Strong Reference


// MARK: - EXAMPLE 1: Strong Reference

/*class User {
    let unit: String
    init(unit: String) { self.unit = unit }
    deinit { print("User \(unit) is being deinitialized") }
}

var user: User?

let test = {
    user = User(unit: "")
    user = nil
    print("test")
}



test()*/

// count 3
/*var u1: User? = User(unit: "test")
// count 2
u1 = nil

var u2 = u1
u2 = nil
// count 1

var u3 = u1
// u3 = nil
// count 0
*




// MARK: - EXAMPLE 2: Strong Reference

/*
 
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: Person?
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}



// var john: Person?
// var unit4A: Apartment?

let test = {
    var john: Person?
    var unit4A: Apartment?

    // It is Calling to deinit
    john = Person(name: "John Appleseed")
    unit4A = Apartment(unit: "4A")
    
    // It is NOT Calling to deinit
    john!.apartment = unit4A
    unit4A!.tenant = john
    
    // It is NOT Calling to deinit
    // because has a Strong Reference
    //john = nil
    //unit4A = nil
    
    
    // It is Calling to deinit
    john?.apartment = nil
    unit4A?.tenant = nil
    
    //john = nil
    //unit4A = nil
    
}


print("Exit")
test()
*/






// MARK: - WEAK Reference


class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}


// It is Calling to deinit
var john: Person?
//var unit4A: Apartment?
let test = {
    var unit4A: Apartment?
    john = Person(name: "John Appleseed")
    unit4A = Apartment(unit: "4A")
    
    // It is Calling to deinit
    // because tenant is a weak Reference
    john!.apartment = unit4A
    unit4A!.tenant = john
    
    // It is Calling to deinit
    // because has a weak Reference
    john?.apartment = nil
    john = nil
    //john?.apartment = nil
    //unit4A = nil
    
    
    // It is Calling to deinit
    // john?.apartment = nil
    // unit4A?.tenant = nil
    
}

test()


