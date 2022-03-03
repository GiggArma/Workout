//
//  Workout.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import Foundation
import CoreText

enum Mode : String,CaseIterable {
    case bike
    case run
    case walk
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

