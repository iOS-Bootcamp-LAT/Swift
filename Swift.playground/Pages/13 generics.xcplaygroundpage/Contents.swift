//: [Previous](@previous)

import Foundation


func printValues<T>(a: T, b: T) {
    print(a)
    print(b)
}

printValues(a: 15, b: 16)

printValues(a: "TEST", b: "TEST 2")


class ListGeneric <T> {
    var list: [T] = []
    
    func printList() {
        for item in list {
            print("Element: \(item)")
        }
    }
}


var listG = ListGeneric<Int>()
listG.list.append(12)
listG.list.append(13)
listG.list.append(14)

print(listG.list)


var listGStr = ListGeneric<String>()
listGStr.list.append("12")
listGStr.list.append("13")
listGStr.list.append("14")

listGStr.printList()
