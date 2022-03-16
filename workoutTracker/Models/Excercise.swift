//
//  Excercise.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/13/22.
//

import Foundation

struct Excercise: Identifiable {
    let id: UUID
    var title: String
    var reps: Int
    var weight: Double
    var equipment: String
    
    init(id: UUID = UUID(), title: String, reps: Int, weight: Double, equipment: String) {
        self.id = id
        self.title = title
        self.reps = reps
        self.weight = weight
        self.equipment = equipment
    }
}

extension Excercise {
    struct Data {
        var title: String = ""
        var reps: Int = 0
        var weight: Double = 0
        var equipment: String = ""
    }
    
    var data: Data {
        Data(title: title, reps: reps, weight: weight, equipment: equipment)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        reps = data.reps
        weight = data.weight
        equipment = data.equipment
    }
}

extension Excercise {
    static let sampleData: [Excercise] = [
        Excercise(title: "Hummer Curls", reps: 12, weight: 25, equipment: "Dumbbels"),
        Excercise(title: "Chest Fly", reps: 12, weight: 25, equipment: "Dumbbels"),
        Excercise(title: "Lying Triceps Extension", reps: 12, weight: 25, equipment: "Dumbbels")
    ]
}
