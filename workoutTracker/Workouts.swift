//
//  Workouts.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/9/22.
//

import SwiftUI

struct Workouts: View {
    @State var excercises: [Excercise]
    
    var body: some View {
        List {
            ForEach($excercises) { $excercise in
                NavigationLink(destination: DetailView(excercise: $excercise)) {
                    CardView(excercise: excercise)
                }
            }
        }
        .navigationTitle("Workouts")
    }
}

struct Workouts_Previews: PreviewProvider {
    static var previews: some View {
        Workouts(excercises: Excercise.sampleData)
    }
}
