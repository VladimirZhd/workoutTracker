//
//  ContentView.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Workouts()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("Workout")
                }
            Account()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
