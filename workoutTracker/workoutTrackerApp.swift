//
//  workoutTrackerApp.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/7/22.
//

import SwiftUI
import Firebase

@main
struct workoutTrackerApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
