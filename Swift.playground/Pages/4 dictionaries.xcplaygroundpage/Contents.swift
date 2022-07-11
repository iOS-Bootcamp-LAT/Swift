//: [Previous](@previous)

import Foundation

var dict = Dictionary<Int, String>()
var dict2 = [ Int: [String] ]()

dict = [ 1: "One", 2: "Two", 3: "Three" ]

dict2 = [ 1: ["a", "b", "c"]  ]
// print(dict2[1]?.count)



dict[3] = "Test"


print(dict)

dict.updateValue("Test2", forKey: 3)

print(dict)

// dict[3] = nil
dict.removeValue(forKey: 3)

print(dict)

/**
 
 1212: "value",
 4656: "value",
 898: "value",
 9887: "value",
 
 */
