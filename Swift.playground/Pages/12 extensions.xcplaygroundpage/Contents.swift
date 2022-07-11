//: [Previous](@previous)

import Foundation
class User {
    
}

extension User {
    func printTest() {
        print("TEST")
    }
}

let user = User()
user.printTest()

extension Double {
    func metersToKm() -> Double {
        self * 1000
    }
    
    var km: Double {
        return self * 1000
    }
}

let meters: Double = 5

print( meters.metersToKm() )

print( meters.km )
