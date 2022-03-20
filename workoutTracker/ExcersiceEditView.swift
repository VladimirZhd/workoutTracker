//
//  ExcersiceEditView.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/17/22.
//

import SwiftUI

struct ExcersiceEditView: View {
    @Binding var excercise: Excercise.Data
    
    var body: some View {
        Form {
            Section(header: Text("Exercise")) {
                VStack(alignment: .leading) {
                    Text("Title: ")
                    TextField("Title", text: $excercise.title)
                }
                HStack {
                    Slider(value: $excercise.reps, in: 5...25, step: 1) {
                        Text("Reps")
                    }
                    Spacer()
                    Text("\(Int(excercise.reps)) reps")
                }
                HStack {
                    Slider(value: $excercise.weight, in: 5...50, step: 0.5){
                        Text("Weight")
                    }
                    Spacer()
                    Text("\(excercise.weight, specifier: "%.1f") lb")
                }
                VStack(alignment: .leading) {
                    Text("Equipment: ")
                    TextField("Equipment", text: $excercise.equipment)
                }
            }
        }
    }
}

struct ExcersiceEditView_Previews: PreviewProvider {
    static var previews: some View {
        ExcersiceEditView(excercise: .constant(Excercise.sampleData[0].data))
    }
}
