//
//  User.swift
//  LoginApp
//
//  Created by Олег Федоров on 27.08.2021.
//

struct User {
    let login = "Kenny"
    let password = "Qwerty"
    let person: Person
}

struct Person {
    let name = "Oleg"
    let surname = "Fedorov"
    let age = "27"
    let interests = "music and football"
    let favoriteTeam = "ChelseaFC"
    let favoriteBands = "System of a Dawn, Korn, Sepultura"
}

let person = Person()
let oleg = User(person: person)


