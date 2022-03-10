//
//  ProfileView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var sexe : Sexe = .female
    @State var firstName: String = ""
    @State var lastName : String = ""
    
    var body: some View {
        ZStack {
    
            VStack {
                TextField("First name", text: $firstName)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
                TextField("Last name", text: $lastName)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
                Picker("Sexe",selection: $sexe){
                    ForEach(Sexe.allCases,id : \.self){pri
                        in
                        Text("\(pri.rawValue)")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding(14)
            .navigationTitle("👤 Profile")
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
