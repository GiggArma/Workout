//
//  Workout.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import Foundation
import CoreText

enum Mode : String,CaseIterable {
    case bike = "🚲"
    case run = "🏃‍♂️"
    case walk = "🚶🏻"
}


enum Sexe : String, CaseIterable{
    case female
    
    case male
    
    case other
}

struct Workout:Identifiable {
    var id = UUID()
    var mode : Mode
    
    static var testWorkout = [
        Workout(id : UUID(), mode: .bike),
        Workout(id : UUID(),mode: .run),
        Workout(id : UUID(),mode: .walk)
    
    ]
}

struct WorkoutSexe:Identifiable {
    var id = UUID()
    var sexe : Sexe
    
    static var testWorkout = [
        WorkoutSexe(id : UUID(),sexe : .female),
        WorkoutSexe(id : UUID(),sexe : .male),
        WorkoutSexe(id : UUID(),sexe : .other)
    
    ]
}


