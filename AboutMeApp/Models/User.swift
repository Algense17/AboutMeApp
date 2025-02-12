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
    
    var getFullName: String {
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
    var photo: String
    var bio: String
    
    
    static func getPerson() -> Person{
        Person(
            name: "Vasiliy",
            surname: "Simakov",
            jobInfo: Job.getJob(),
            photo: "vasiliy",
            bio: "Меня зовут Василий, работаю в небольшой ИТ компании QA на проекте с парковками. Раньше был сисадмином, но как-то поднадоело и понял, что командная работа над проектом намного интереснее. А еще я бегаю различные забеги и гоняю в страйкбол :)"
           
        )
    }
}

struct Job {
    var company: String
    var department: String
    var position: String
    
    static func getJob() -> Job {
        Job(
            company: "ISS",
            department: "IT",
            position: "QA"
        )
    }
}
