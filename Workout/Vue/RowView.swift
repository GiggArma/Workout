//
//  RowView.swift
//  Workout
//
//  Created by brotelande hector on 17/03/2022.
//

import SwiftUI
import Foundation
import CoreLocation
import MapKit
let workout : Workout = Workout.testWorkout[0]

struct RowView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
    
    var body: some View {
        
        VStack {
            HStack {
                Text(workout.mode.rawValue)
                Text(Date.now, format: .dateTime.day().month().year())
            }
            
            MapView()
            
        }
        .frame(width: 350, height: 400)
        .padding()
    }
}

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
      
      func makeCoordinator() -> MapViewCoordinator {
        return MapViewCoordinator()
      }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {}
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
    
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        mapView.setRegion(region, animated: true)
    
        let p1 = workout.annotationItems[0]
        let p2 = workout.annotationItems[1]
    
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: p1)
        request.destination = MKMapItem(placemark: p2)
        if (workout.mode.rawValue == "🚲" ) {
            request.transportType = .transit
        }
        request.transportType = .walking
    
        let directions = MKDirections(request: request)
        directions.calculate { response, error in
            guard let route = response?.routes.first else { return }
            mapView.addAnnotations([p1, p2])
            mapView.addOverlay(route.polyline)
            mapView.setVisibleMapRect(route.polyline.boundingMapRect, edgePadding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20), animated: true)
        }
        return mapView
    }
    
    class MapViewCoordinator: NSObject, MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
          let renderer = MKPolylineRenderer(overlay: overlay)
          renderer.strokeColor = .systemBlue
          renderer.lineWidth = 5
          return renderer
        }
      }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
            .previewLayout(.sizeThatFits)
        RowView()
            .previewLayout(.sizeThatFits)
        RowView()
            .previewLayout(.sizeThatFits)
    }
}
