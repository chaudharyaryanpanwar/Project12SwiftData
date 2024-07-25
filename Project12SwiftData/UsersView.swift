//
//  UsersView.swift
//  Project12SwiftData
//
//  Created by Aryan Panwar on 25/07/24.
//

import SwiftData
import SwiftUI

struct UsersView: View {
    
    @Query var users : [User]
    
    var body: some View {
        List(users){ user in
            NavigationLink(value : user ){
                HStack {
                    Text(user.name)
                    
                    Spacer()
                    
                    Text(String(user.jobs.count))
                        .fontWeight(.black)
                        .padding(.horizontal , 10)
                        .padding(.vertical , 5)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(.capsule)
                }
                
            }
        }
    }
    
//    init (minimumJoinDate : Date ){
//        _users = Query(filter : #Predicate<User>{ user in
//            user.joinDate >= minimumJoinDate
//        } , sort : \User.name)
//    }
    
    init(minimumJoinDate : Date , sortOrder : [SortDescriptor<User>]){
        _users = Query(filter : #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        } , sort : sortOrder )
    }
}

#Preview {
    UsersView(minimumJoinDate: Date(), sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for : User.self)
}
