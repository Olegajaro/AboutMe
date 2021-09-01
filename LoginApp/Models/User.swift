//
//  User.swift
//  LoginApp
//
//  Created by Олег Федоров on 27.08.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Kenny",
            password: "Qwerty",
            person: Person.getPerson()
        )
    }

}

struct Person {
    let name: String
    let surname: String
    let age: String
    let interests: String
    let favoriteTeam: String
    let favoriteBands: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Oleg",
            surname: "Fedorov",
            age: "27",
            interests: "music and football",
            favoriteTeam: "ChelseaFC",
            favoriteBands: "System of a Dawn, Korn, Sepultura",
            image: "Cat")
    }
}




