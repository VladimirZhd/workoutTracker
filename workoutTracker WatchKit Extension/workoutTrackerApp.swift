//
//  workoutTrackerApp.swift
//  workoutTracker WatchKit Extension
//
//  Created by Vova Zhdanov on 3/7/22.
//

import SwiftUI

@main
struct workoutTrackerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
