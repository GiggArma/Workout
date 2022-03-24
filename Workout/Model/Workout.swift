//
//  Workout.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import Foundation
import CoreText
import CoreLocation
import MapKit

enum Mode : String,CaseIterable {
    case bike = "🚲"
    case run = "🏃‍♂️"
    case walk = "🚶🏻"
}

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}


enum Sexe : String, CaseIterable{
    case female
    
    case male
    
    case other
}

struct Workout:Identifiable {
    var id = UUID()
    var mode : Mode
    var annotationItems: [MKPlacemark] = []
    
    static var testWorkout = [
        Workout(id : UUID(), mode: .bike, annotationItems: [MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450)), MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.810500, longitude: -122.477050)),]),
        Workout(id : UUID(),mode: .run, annotationItems: [MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.810800, longitude: -122.477650)), MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.810200, longitude: -122.477450)),]),
        Workout(id : UUID(),mode: .walk, annotationItems: [MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.810600, longitude: -122.477450)), MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 37.810200, longitude: -122.477381)),])
    
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
