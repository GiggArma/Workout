//
//  TimerView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        
        Button{
            
        }label:{
           
            Text("▶️ GO")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height:55)
                .frame(maxWidth: 150)
                .background(Color.orange)
                .cornerRadius(50)
        }
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
