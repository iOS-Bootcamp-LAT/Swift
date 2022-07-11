//: [Previous](@previous)

import Foundation

enum Numbers {
    case one(Int)
    case two(Int)
    case three
}

let one = Numbers.one(1)

switch one {
    
case .one(let data):
    print("Data: ",data)
default:
    print("No data")
}



enum TestResult<S, E> {
    case success(S)
    case failure(E)
}


func getUser( completion: ( TestResult<String, Error>) -> Void ) {
    let validUser = false
    
    if validUser {
        completion(.success("User Name"))
    } else {
        let error = NSError(domain: "", code: 400, userInfo: ["test": "test"])
        completion(.failure(error))
    }
}


getUser { result in
    
    switch result {
        
    case .success(let user):
        print("User: ", user)
    case .failure(let error):
        print("Error: ", error)
    }
}
