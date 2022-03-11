//
//  Excercise.swift
//  workoutTracker
//
//  Created by Vova Zhdanov on 3/9/22.
//

import SwiftUI

struct Excercise: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    
                }){
                    Text("Add Exercise")
                        .foregroundColor(Color.black)
                }
                .padding()
                
            }
            Spacer()
        }
    }
}

struct Excercise_Previews: PreviewProvider {
    static var previews: some View {
        Excercise()
    }
}
