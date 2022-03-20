//
//  Workout.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/16/22.
//

import Foundation

struct Workout: Identifiable {
    let id: UUID
    var title: String
    var sets: Sets
    var superset: Superset
    
    init(id: UUID = UUID(), title: String, sets: Sets, superset: Superset) {
        self.id = id
        self.title = title
        self.sets = sets
        self.superset = superset
    }
}

extension Workout {
    struct Sets {
        var excercise: Excercise
        var repeatNumber: Int
    }
    
    struct Superset {
        var excercises: [Excercise]
        var repeatNumber: Int
    }
}
