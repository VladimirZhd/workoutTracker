//
//  DetailView.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/15/22.
//

import SwiftUI

struct DetailView: View {
    @Binding var excercise: Excercise
    
    @State private var IsPresentingEditView = false
    @State private var data = Excercise.Data()
    
    var body: some View {
        List {
            Section(header: Text("Excercise Detail")) {
                HStack {
                    Text(excercise.title)
                }
                HStack {
                    Text("Reps:")
                    Spacer()
                    Text("\(excercise.reps)")
                }
                HStack {
                    Text("Weight:")
                    Spacer()
                    Text("\(excercise.weight, specifier: "%.1f")")
                }
                HStack {
                    Text("Equipment:")
                    Spacer()
                    Text(excercise.equipment)
                }
            }
        }
        .toolbar {
            Button("Edit") {
                IsPresentingEditView = true
                data = excercise.data
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(excercise: .constant(Excercise.sampleData[0]))
    }
}
