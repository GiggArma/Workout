//
//  WorkoutView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI
import CoreText
import CoreLocation
import MapKit

struct WorkView: View {
    
    @EnvironmentObject var data : WorkoutViewModel
    
    
    // Date
    let date: Date
    var dateFormatter: DateFormatterProtocol
           
    init(dateFormatter: DateFormatterProtocol = DateFormatter()) {
    date = Date()
    self.dateFormatter = dateFormatter
    self.dateFormatter.dateStyle = .long
           
    }
           
    var dateValue: String {
    return dateFormatter.string(from: date)
    }
    
    // Fin Date
    
    
    let workout : Workout = Workout.testWorkout[0]
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450), span: MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.010))
    
    
    var body: some View {
        ZStack{
            
            VStack{
                Text(dateValue)
                    .foregroundColor(.black)
                    
                MapView()
                    .frame(width:400 , height:600 )
                NavigationView{
                    
                        HStack {
                            VStack{
                                Text("Distance")
                                    .foregroundColor(.black)
                                    
                                Text("189.08 m")
                                    .foregroundColor(.black)
                                    
                            }
                            VStack{
                                Text("      Time")
                                    .foregroundColor(.black)
                                    
                                Text("      0.0.33")
                                    .foregroundColor(.black)
                                    
                            }
                            VStack{
                                Text("        Speed")
                                    .foregroundColor(.black)
                                    
                                Text("        0,00 h")
                                    .foregroundColor(.black)
                                    
                                
                            }
                        
                           
                      }
                   }
                }
            }
        }
    }


struct WorkView_Previews: PreviewProvider {
    static var previews: some View {
        WorkView()
            .environmentObject(WorkoutViewModel())
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
            WorkView()
            .previewLayout(.sizeThatFits)
    }
}
