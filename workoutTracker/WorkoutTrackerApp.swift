//
//  WorkoutTrackerApp.swift
//  WorkoutTracker
//
//  Created by Vova Zhdanov on 3/7/22.
//

import SwiftUI
import Firebase

@main
struct WorkoutTrackerApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            WorkoutView()
        }
    }
}
