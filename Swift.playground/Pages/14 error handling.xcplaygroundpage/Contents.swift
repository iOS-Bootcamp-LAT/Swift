//: [Previous](@previous)

import Foundation

enum InvalidLogin: Error {
    
    case invalidEmail
    case invalidPassword
    case noData
    
}


func login(email: String, pass: String) throws -> Bool  {
    
    guard !email.isEmpty else {
        throw InvalidLogin.invalidEmail
    }
    
    guard !pass.isEmpty else {
        throw InvalidLogin.invalidPassword
    }
    
    
    return true
}

do {
    let email = "test"
    let pass = "test"
    let success = try login(email: email, pass: pass)
    print("Login success: \(success)")
} catch(let e) {
    print("Error: \(e)")
}



