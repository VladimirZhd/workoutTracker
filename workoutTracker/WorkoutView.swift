//
//  ContentView.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/7/22.
//

import SwiftUI

struct WorkoutView: View {
    var excercises: [Excercise] = Excercise.sampleData
    var body: some View {
        NavigationView {
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ExcersiceListView(excercises: excercises)
                    .tabItem {
                        Image(systemName: "figure.walk")
                        Text("Excersices")
                    }
                Account()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
