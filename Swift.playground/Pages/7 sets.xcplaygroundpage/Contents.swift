//: [Previous](@previous)

import Foundation

var set = Set<String>()
var set2: Set<String> = ["a", "b", "c"]
var set3: Set = ["a", "b", "c"]



set.insert("a")
set.insert("b")
set.insert("c")
set.insert("d")

print(set)

if set.contains("a") {
    print("Contains")
}


set.remove("a")
print(set)


var setOne: Set = [1, 2, 3,4 ,5]
var setTwo: Set = [3, 4, 5, 6, 7]

print(setOne.intersection(setTwo))

print(setOne.symmetricDifference(setTwo))

print(setOne.union(setTwo))
