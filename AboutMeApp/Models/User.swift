//
//  User.swift
//  AboutMeApp
//
//  Created by Vasiliy on 11.02.2025.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
    
}

struct Person {
    let name: String
    let surname: String
    let jobInfo: Job
    let photo: String
    let bio: String
    
    var getFullName: String {
        "\(name) \(surname)"
    }
    
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
    let company: String
    let department: String
    let position: String
    
    static func getJob() -> Job {
        Job(
            company: "ISS",
            department: "IT",
            position: "QA"
        )
    }
}
