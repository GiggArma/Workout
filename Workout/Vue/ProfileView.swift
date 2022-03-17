//
//  ProfileView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct ProfileView: View {
    
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


    @State var sexe : Sexe = .female
    @State var firstName: String = ""
    @State var lastName : String = ""
    
    
    var body: some View {
        ZStack {
    
            VStack {
                TextField("First name", text: $firstName)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                TextField("Last name", text: $lastName)
                    .padding(.horizontal)
                    .frame(height: 55)

                    .cornerRadius(10)
                Picker("Sexe",selection: $sexe){
                    ForEach(Sexe.allCases,id : \.self){pri
                        in
                        Text("\(pri.rawValue)")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                HStack{
                    Text("Date of birth")
                        .padding(.horizontal)
                        .frame(height: 55)
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    Text(dateValue)
                        .background(Color(.systemGray4))
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height:55)
                        .frame(maxWidth: 150)
                        .cornerRadius(50)
                }
                
                Button{
                    
                }label:{
                   
                    Text("Save")
                        .foregroundColor(.blue)
                        .background(Color.white)
                        .padding(.horizontal)
                        .frame(height: 55)
                        .cornerRadius(10)
                        
                    }
                }
            }
            .padding()
            .navigationTitle("👤 Profile")
            
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
//struct MyView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView(dateFormatter: PreviewDateFormatter(locale: Locale(identifier: "fr")))
//        }
//    }
//}
