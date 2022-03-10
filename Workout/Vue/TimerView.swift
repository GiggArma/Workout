//
//  TimerView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct TimerView: View {
    
    @State var mode : Mode = .bike
    
    var body: some View {
        
        VStack{
            
            Picker("Mode",selection: $mode){
                ForEach(Mode.allCases,id : \.self){pri
                    in
                    Text("\(pri.rawValue)")
                }
            }
            .padding(25)
            .pickerStyle(SegmentedPickerStyle())
            
            
            
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
}


struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
