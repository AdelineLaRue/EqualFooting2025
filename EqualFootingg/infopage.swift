//
//  infoPage.swift
//  EqualFooting2024
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct infoPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("cream")
                    .ignoresSafeArea()
                
                VStack{
                    Text("Info Section!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    
                    Text("Your personal college counselor at your fingertips.")
                    
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    //To CommonApp
                    NavigationLink(destination: commonapp()) {
                        Text("Common App Tips")
                            .foregroundColor(Color("dblue"))
                            
                            
                            .padding()
                            .background(Rectangle())
                            .foregroundColor(.lightblue)
                            .cornerRadius(20)
                            .padding()
                    }
                    //To sat
                    NavigationLink(destination: Sat()) {
                        Text("Standardized Testing Tips")
                            .foregroundColor(Color("dblue"))
                            
                            
                            .padding()
                            .background(Rectangle())
                            .foregroundColor(Color("dorange"))
                            .cornerRadius(20)
                            .padding()
                    }
                    //To college
                    NavigationLink(destination: college()) {
                        Text("Finding the Best College for you!")
                            .foregroundColor(Color("dblue"))
                            
                            
                            .padding()
                            .background(Rectangle())
                            .foregroundColor(Color("lightblue"))
                            .cornerRadius(20)
                            .padding()
                    }
                    
                    
                }
                
                
                
            }
        }
    }
}

#Preview {
    infoPage()
}

