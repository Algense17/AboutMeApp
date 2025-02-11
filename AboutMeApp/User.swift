//
//  User.swift
//  AboutMeApp
//
//  Created by Vasiliy on 11.02.2025.
//

struct User {
    var login = "User"
    var password = "Password"
    var person: Person
}

struct Person {
    var name: String
    var surname: String
    var jobInfo: Job
    var bio: String
}

struct Job {
    var company: String
    var department: String
    var positin: String
}
