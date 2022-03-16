//
//  CardView.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/13/22.
//

import SwiftUI

struct CardView: View {
    let excercise: Excercise
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(excercise.title)
                    .foregroundColor(.black)
                Spacer()
                HStack {
                    Text("Reps: \(excercise.reps)")
                        .font(.caption)
                        .foregroundColor(.black)
                    Text("Weight: \(excercise.weight, specifier: "%.1f")")
                        .font(.caption)
                        .foregroundColor(.black)
                }
            }
            Text("Equipment: \(excercise.equipment)")
                .font(.caption)
                .foregroundColor(.black)
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(excercise: Excercise.sampleData[0])
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
