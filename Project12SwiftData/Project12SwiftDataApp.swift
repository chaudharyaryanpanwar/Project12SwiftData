//
//  Project12SwiftDataApp.swift
//  Project12SwiftData
//
//  Created by Aryan Panwar on 25/07/24.
//

import SwiftData
import SwiftUI

@main
struct Project12SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for : User.self)
    }
}
