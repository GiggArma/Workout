//
//  ProfileView.swift
//  Workout
//
//  Created by niebel romain on 03/03/2022.
//
import SwiftUI

struct ProfileView: View {
    
//    let date: Date
//    var dateFormatter: DateFormatterProtocol
       
//    init(dateFormatter: DateFormatterProtocol = DateFormatter()) {
//        date = Date()
//        self.dateFormatter = dateFormatter
//        self.dateFormatter.dateStyle = .long
       
//    }
       
   // var dateValue: String {
   // return dateFormatter.string(from: date)
   // }

    @State var sexe : Sexe = .female
    @State var firstName: String = ""
    @State var lastName : String = ""
    
    
    var body: some View {
          
       
        ZStack{
            
            Color(.systemGray4)
                .edgesIgnoringSafeArea(.all)
            
        
            NavigationView{
                    VStack(spacing: 0) {
                        
                                                                    
                        List {
                            TextField("First name", text: $firstName)
                                .padding(.horizontal)
                                .frame(height: 50)
                                .foregroundColor(.black)
                                .cornerRadius(50.0)
                                .background(Color(.white))
                            TextField("Last name", text: $lastName)
                                .padding(.horizontal)
                                .frame(height: 55)
                                .cornerRadius(10)
                                .background(Color(.white))
                            Picker("Sexe",selection: $sexe){
                                ForEach(Sexe.allCases,id : \.self){pri
                                    in
                                    Text("\(pri.rawValue)")
                                }
                            }
                            
                            .padding(15)
                            .pickerStyle(SegmentedPickerStyle())
                            .background(Color(.white))
                            
                            HStack(spacing : 0){
                                
                                Text("Date of birth                  ")
                                    .padding(.horizontal)
                                    .frame(width : 210,height : 50, alignment: .center)
                                    .background(Color(.white))
                                    
                                
                                Spacer()
                                
                                Text(" May 31,2000")
                                    .background(Color(.white))
                                    .foregroundColor(.black)
                                    //.padding()
                                    //.lineSpacing(250)
                                    .frame(width: 200, height: 50, alignment: .center)
                                    .cornerRadius(15.0)
                                    //.frame(height: 50)
                                    
                                
                                
                            }
                            
                            Button(){
                                
                            }label:{
                               
                                Text("Save")
                                    .foregroundColor(.blue)
                                    .background(Color.white)
                                    .frame(width : 400, alignment: .topLeading)
                                    .padding(.horizontal)
                                    .listRowBackground(Color(.white))
                                    
                                }
                               Spacer()
                            }
                       
                        .navigationTitle("Profile")
                        
                        }
                    }
                      //.padding()
                
            
                    
                        Spacer()
                        
                
            
                
            }
        }
    }



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
            ProfileView()
        }
    }

    
//struct MyView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ProfileView(dateFormatter: PreviewDateFormatter(locale: Locale(identifier: "fr")))
//                .previewInterfaceOrientation(.portraitUpsideDown)
            
//            }
//        }
//    }
}

