//
//  search.swift
//  EqualFootingg
//
//  Created by Scholar on 8/1/24.
//

import Foundation
import SwiftUI

struct search : View {
    var body: some View {
            NavigationStack {
                ZStack {
                    Color("cream")
                        .ignoresSafeArea()
                    NavigationLink(destination: survey()) {
                        Text("Take me to the survey")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.black)
                            .cornerRadius(7.0)
                }
                
            }
        }
    }
}
    
#Preview {
    search()
}
