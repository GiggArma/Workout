//
//  ProfileView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var firstName: String = ""
    
    var body: some View {
        ZStack {
            Color("lightGray")
                .edgesIgnoringSafeArea(.all)
            VStack {
                TextField("First name", text: $firstName)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
                Spacer()
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
