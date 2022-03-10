//
//  TimerView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct TimerView: View {
    
    @State var mode : Mode = .bike
    @State var progressTime = 0
    @State private var isRunning = false
    @State var isLaunched = false
    
    var hours: Int {
      progressTime / 3600
    }

    var minutes: Int {
      (progressTime % 3600) / 60
    }

    var seconds: Int {
      progressTime % 60
    }
    
    @State private var timer: Timer?
    
    var body: some View {
        
        VStack{
            Spacer()
            
            HStack(spacing: 10) {
                StopWatchView(timeUnit: hours)
                    Text(":")
                        .font(.system(size: 48))
                        .foregroundColor(.black)
                        .offset(y: -5)
                StopWatchView(timeUnit: minutes)
                    Text(":")
                        .font(.system(size: 48))
                        .foregroundColor(.black)
                        .offset(y: -5)
                StopWatchView(timeUnit: seconds)
            }
            
            Spacer()
                
            Picker("Mode",selection: $mode){
                ForEach(Mode.allCases,id : \.self){pri
                    in
                    Text("\(pri.rawValue)")
                }
            }
            .padding(25)
            .pickerStyle(SegmentedPickerStyle())
            
            
            
            Button(action: {
                if isRunning{
                    timer?.invalidate()
                } else {
                    timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                        progressTime += 1
                    })
                }
                isRunning.toggle()
                isLaunched = true
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.orange)

                    Text(isRunning ? "⏹ Stop" : "▶️ GO")
                        .font(.body)
                        .bold()
                        .foregroundColor(.white)
                }
            }
            Button("↩️ Restart", action: {
                if progressTime > 0 {
                    progressTime = 0
                } else {
                    isLaunched = false
                }
            })
                .disabled(!isLaunched)
            
            Spacer()
        }
    }
}

struct StopWatchView: View {
    var timeUnit: Int
    
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
            return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
        }

    var body: some View {
        VStack {
            ZStack {
                HStack(spacing: 2) {
                    Text(timeUnitStr.substring(index: 0))
                        .font(.system(size: 48))
                        .frame(width: 28)
                    Text(timeUnitStr.substring(index: 1))
                        .font(.system(size: 48))
                        .frame(width: 28)
                }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}

extension String {
    func substring(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
