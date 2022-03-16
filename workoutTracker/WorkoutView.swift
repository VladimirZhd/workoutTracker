//
//  ContentView.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/7/22.
//

import SwiftUI

enum Tabs: String {
    case home
    case workouts
    case account
}

struct WorkoutView: View {
    var excercises: [Excercise] = Excercise.sampleData
    @State var selectedTab: Tabs = .home
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(Tabs.home)
                Workouts(excercises: excercises)
                    .tabItem {
                        Image(systemName: "figure.walk")
                        Text("Workout")
                    }
                    .tag(Tabs.workouts)
                Account()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
                    .tag(Tabs.account)
            }
            .navigationTitle(selectedTab.rawValue.capitalized)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
