//: [Previous](@previous)

import Foundation

let CUSTOMER = "CUSTOMER"
let ADMIN = "ADMIN"

let userType = "CUSTOMER"

if userType == "CUSTOMER" {
    print("CUSTOMER")
} else if userType == "ADMIN" {
    print("ADMIN")
} else {
    
}

enum UserType: String {
    case customer = "CUSTOMER_"
    case admin = "ADMIN_"
    case normal = "NORMAL_"
}

let userTypeEnum: UserType = .customer

print(" Type: \(userTypeEnum.rawValue)")

switch userTypeEnum {
    
case .customer:
    print("CUSTOMER")
case .admin:
    print("ADMIN")
case .normal:
    print("NORMAL")
}



