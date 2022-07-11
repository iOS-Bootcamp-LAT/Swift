//: [Previous](@previous)

import Foundation

let array = [1,2,3,4,5,6]
let arrayStr = ["TEST"]

// TASK
// Implementar estos metodos y explicar como usarlos




// Filters
class User {
    var name: String
    var age = 12
    init(_ name: String) {
        self.name = name
    }
}

let userArray = [User("Pablo"), User("Pedro"), User("Jose"), User("Pablo") ]

let filterUser = userArray.filter { $0.name == "Jose" }


for user in filterUser {
    print(user.name)
}


// Contains
let containsPedro = userArray.contains(where: { user in
    return user.name == "Pedro"
})
//
// userArray
print(containsPedro)
let newArray = userArray.map({ user -> User in
    user.name = "\(user.name) - Name"
    //let userAux = User("\(user.name) - Name")
    return user
})


let names = userArray.map({ $0.name })
print(names)


// Maps



// Reduce
//let can = userArray.age.reduce(0, combine: +)

let totalAge = userArray.reduce(0) { (lastResult, user) -> Int in
    return lastResult + user.age
}
// Version corta

print(totalAge)
