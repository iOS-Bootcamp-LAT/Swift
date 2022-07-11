//: [Previous](@previous)

import Foundation

// optionals
var num: Int?

// num = 15

print(num)

// Unwrap
print(num ?? 16)
// print(num!)


// optional binding
// if let num = num

/*if let numAux = num {
    print("IF \(numAux)")
} else {
    print("Else")
}*/

// num = 15

func test() {
    guard let numAux = num else {
        print("Else guard")
        return
    }
    print("guard \(numAux)")
}

// test()

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

var s = Student()
s.name = "Pablo"

var b = Book()
b.pages = 93

s.book = b

if let pages = s.book?.pages {
    print("Pages: \(pages)")
}

print(s.name)
print(s.book?.pages)

// Optional Chaining
// student.book?.pages
