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
