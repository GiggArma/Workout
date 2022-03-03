//
//  ContentView.swift
//  Workout
//
//  Created by brotelande hector on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Bike")
                    .font(.system(size: 16, weight: .medium))
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
