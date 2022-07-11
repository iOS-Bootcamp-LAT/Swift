//: [Previous](@previous)

import Foundation




let number = 12
let str = "Pablo"
class MyClass {
    var name = "Pedro"
}
let myC = MyClass()
let myC2 = MyClass()


let array: [Any] = [number, str, myC, myC2]

for item in array {
    if item is Int {
        //print("It is an Int")
    }
    
    if item is MyClass {
        //print("It is MyClass")
    }
    
    if let c = item as? MyClass {
        //print("Is class (Casting) \(c.name)")
    }
    
    let c2 = item as? MyClass
    print("Force", c2?.name)
    
}

let num = 12

let dou = Double(num)



