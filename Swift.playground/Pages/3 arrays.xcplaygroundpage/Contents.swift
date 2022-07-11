//: [Previous](@previous)

import Foundation



//var array: [Any] = [1, "2"]
var array = [1, 2, 3,4,5,6]
 
var range = array[1...3]


var array2 = [Int]()
var array3 = Array<Int>()

var array4 = Array<Int>(repeating: 8, count: 10)


array.count
array.append(85)
array.insert(90, at: 0)
array.count

array.remove(at: 0)
array.count

array.removeAll(where: { (item: Int) in
    return item == 2
})

array.removeAll(where: {  $0 == 2 || $0 == 1 } )



print(array)
