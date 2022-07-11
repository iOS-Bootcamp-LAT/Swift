//: [Previous](@previous)

import Foundation
import Darwin

class Human {
    var email: String
    
    init(email: String) {
        self.email = email
    }
}

class Person: Human {
    var name: String = "N/D"
    var age: Int = 0
    
    var desc: String {
       return "\(name) - \(age)"
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        super.init(email: "defual@email.com")
    }
    
    override init(email: String) {
        super.init(email: email)
    }

    func eat() {
        print("\(name) is Eatting")
    }
    
    func eat(food: String) {
        print("\(name) is Eatting \(food)")
    }
}

var per = Person(name: "Pedro", age: 34)
print(per.age)

var perOne = Person(email: "test@gmail.com")
perOne.name = "Jhoselin"
perOne.age = 27
perOne.eat()
perOne.eat(food: "pizza")

print(perOne.desc)

print(perOne.name)




struct PersonS {
    var name: String
    var age: Int
    
    func eat() {
        print("\(name) is Eatting")
    }
    
    func eat(food: String) {
        print("\(name) is Eatting \(food)")
    }
}


let perS = PersonS(name: "Jhoselin S", age: 28)

perS.eat()
print("Diff")
/*
var perClassOne = Person(name: "Pedro", age: 16)  // [ 12312, 12312312, 124312312  ]
var perClassTwo = perClassOne

print(perClassOne.name)
print(perClassTwo.name)

perClassOne.name = "Pablo"
print(perClassOne.name)
print(perClassTwo.name)*/


print("Diff")

var perClassOne = PersonS(name: "Pedro", age: 16)  // [ 12312, 12312312, 124312312  ]
var perClassTwo = perClassOne

print(perClassOne.name)
print(perClassTwo.name)

perClassOne.name = "Pablo"
print(perClassOne.name)
print(perClassTwo.name)
