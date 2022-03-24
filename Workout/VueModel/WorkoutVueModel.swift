//
//  WorkoutVueModel.swift
//  Workout
//
//  Created by niebel romain on 10/03/2022.
//

import Foundation


protocol DateFormatterProtocol {
    var dateStyle: DateFormatter.Style { get set }
    func string(from date: Date) -> String
}

extension DateFormatter: DateFormatterProtocol { }

struct PreviewDateFormatter: DateFormatterProtocol {
    
    let dateFormatter: DateFormatter
    
    init(locale: Locale) {
        dateFormatter = DateFormatter()
        dateFormatter.locale = locale
    }
    
    var dateStyle: DateFormatter.Style {
        get {
            dateFormatter.dateStyle
        }
        set {
            dateFormatter.dateStyle = newValue
        }
    }
    
    
    func string(from date: Date) -> String {
        return dateFormatter.string(from: date)
    }
    
}

class WorkoutViewModel: ObservableObject {
    @Published var workouts: [Workout] = []
    
    init() {
        getWorkouts()
    }
    
    func getWorkouts() {
        workouts.append(contentsOf: Workout.testWorkout)
    }
    
    func deleteItem(indexSet: IndexSet) {
        workouts.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        workouts.move(fromOffsets: from, toOffset: to)
    }
    
    func updateItem(workout: Workout) {
        let index = workouts.firstIndex(where: { existingWorkout in
            return workout.id == existingWorkout.id
        })
    }
}
