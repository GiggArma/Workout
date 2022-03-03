//
//  MainView.swift
//  Workout
//
//  Created by brotelande hector on 03/03/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
               
        
        TabView {
            TimerView()
                .tabItem {
                    Label("Timer", systemImage: "timer")
                }
            
            WorkoutView()
                .tabItem {
                    Label("Workouts", systemImage: "list.bullet")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
