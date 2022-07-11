//: [Previous](@previous)

import Foundation
import Darwin


// PROTOCOLS
@objc protocol Person {
    var name: String { get set }
    func eat() -> Void
    @objc optional func sleep()
}

class Doctor: Person {
    var name: String = "N/N"
    
    func eat() {
        print("EAT")
    }

    func sleep() {
        print("sleep")
    }
}

let d = Doctor()
//d.eat()
d.name = "Pablo"
d.name

// Delegate Protocol
class FirstClass: SecondClassProtocol {
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }

    func goBack() {
        print("Go Back")
    }
}

protocol SecondClassProtocol {
    func goBack()
}

class SecondClass {
    var delegate: SecondClassProtocol?
    
    func callFirst() {
        print("Start")
        
        print("End")
        //
        delegate?.goBack()
    }
}

 //let secondC = SecondClass()
 // secondC.callFirst()

let firstClass = FirstClass()
firstClass.callSecond()

// Dictionaries

class User: Hashable {

    var name = "N/N"
    var CI = Int.random(in: 1...1000)
    
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.CI == rhs.CI
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(CI)
    }
    
    
}

var dic = Dictionary<User, String>()
let userA = User()
let userB = User()

let userC = User()
dic = [ userA: "I am user A",   userB: "I am user B"   ]

print(dic[userB])


// Copy objecs by value

class UserCopy: NSCopying {

    
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = UserCopy(name: name)
        return copy
    }
    
}


let userCopyA = UserCopy(name: "Pablo")
//let userCopyB = userCopyA
let userCopyB = userCopyA.copy() as! UserCopy

print(userCopyA.name)
print(userCopyB.name)

userCopyA.name = "Pedro"
print(userCopyA.name)
print(userCopyB.name)
