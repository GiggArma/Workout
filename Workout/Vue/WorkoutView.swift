//
//  WorkoutView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct WorkoutView: View {
    
    @EnvironmentObject var data : WorkoutViewModel
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(data.workouts) { workout in
                    RowView(workout : workout)
                        .onTapGesture {
                            data.updateItem(workout: workout)
                        }
                }
                .onDelete(perform: data.deleteItem)
                .onMove(perform: data.moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Workouts")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
            .environmentObject(WorkoutViewModel())
    }
}
