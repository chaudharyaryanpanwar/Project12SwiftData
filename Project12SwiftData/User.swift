//
//  User.swift
//  Project12SwiftData
//
//  Created by Aryan Panwar on 25/07/24.
//

import Foundation
import SwiftData

@Model
class User {
    var name : String
    var city : String
    var joinDate : Date
    @Relationship(deleteRule : .cascade) var jobs = [Job]()
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}

@Model
class Job {
    var name : String
    var priority : Int
    var owner : User?
    
    init (name : String , priority : Int , owner : User? = nil){
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}
