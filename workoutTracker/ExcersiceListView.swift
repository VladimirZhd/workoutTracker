//
//  Workouts.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/9/22.
//

import SwiftUI

struct ExcersiceListView: View {
    @State var excercises: [Excercise]
    
    var body: some View {
        List {
            ForEach($excercises) { $excercise in
                NavigationLink(destination: DetailView(excercise: $excercise)) {
                    CardView(excercise: excercise)
                }
            }
        }
    }
}

struct Workouts_Previews: PreviewProvider {
    static var previews: some View {
        ExcersiceListView(excercises: Excercise.sampleData)
    }
}
