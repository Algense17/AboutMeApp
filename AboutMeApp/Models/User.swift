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
    
    var userFullName {
        "\(person.name) \(person.surname)"
    }
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
    
    
}

struct Person {
    var name: String
    var surname: String
    var jobInfo: Job
    var bio: String
    
    static func getPerson() -> Person{
        Person(
            name: "Vasiliy",
            surname: "Simakov",
            jobInfo: Job.getJob(),
            bio: "dfjkghdlskjfghfsdlkgjhsdfgl"
        )
    }
}

struct Job {
    var company: String
    var department: String
    var positin: String
    
    static func getJob() -> Job {
        Job(
            company: "ISS",
            department: "IT",
            positin: "QA"
        )
    }
}
