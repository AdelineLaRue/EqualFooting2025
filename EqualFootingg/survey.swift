//
//  survey.swift
//  EqualFootingg
//
//  Created by Scholar on 8/1/24.
//

import Foundation
import SwiftUI

private var level = "STEM"
private var subject = "HighSchool"
private var info = "LowIncome"

struct survey: View {
    var body: some View {
        NavigationStack {
                VStack {
                    Text("Hello!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    Text("We suggest that you take a short quiz to determine what opprotunities might suit you best. Please click the next button on the bottom corner when answering the questions.")
                        .font(.title3)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                        .frame(width: 330.0)
                    NavigationLink(destination: question1()) {
                        Text("Okay!")
                            .frame(width: 60.0, height: 35.0)
                            .foregroundColor(Color.black)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("dorange")/*@END_MENU_TOKEN@*/)
                            .cornerRadius(7.0)
                        
                    }
                    NavigationLink(destination: ContentView()) {
                        Text("No thanks.")
                            .frame(width: 100.0, height: 35.0)
                            .foregroundColor(Color.black)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("dorange")/*@END_MENU_TOKEN@*/)
                            .cornerRadius(7.0)
                    }
                    Spacer()
                        .frame(height: 100.0)
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding()
    }
}

struct question1: View {
   var body: some View {
       @State var college = false
       @State var high = false
       NavigationView {
               VStack {
                   Spacer()
                   Text("Are you in higher education?")
                       .font(.title2)
                       .fontWeight(.semibold)
                       .foregroundColor(Color.black)
                       .multilineTextAlignment(.center)
                       .frame(width: 350.0)
                       .padding(.bottom)
                   Button("Yes, I'm in college/graduate school") {
                       college.toggle()
                       if college {
                           level = "XXX"
                       }
                   }
                   .foregroundStyle(.black)
                   .padding()
                   .background(.dorange)
                   .cornerRadius(7.0)
                   Button("No, I'm in high school.") {
                       high.toggle()
                       if high {
                           level = "HighSchool"
                       }
                   }
                   .frame(height: 20.0)
                   .foregroundStyle(.black)
                   .padding()
                   .background(.dorange)
                   .cornerRadius(7.0)
                   Spacer()
                   NavigationLink(destination: question2()) {
                       Text("next ➜")
                           .font(.title3)
                           .multilineTextAlignment(.leading)
                           .foregroundStyle(Color("dblue"))
                           .fontWeight(.bold)
                   }
                   Spacer()
                       .frame(height: 80.0)
           }
       }
           .navigationBarBackButtonHidden(true)
   }
}

struct question2: View {
    var body: some View {
        @State var art = false
        @State var humanities = false
        @State var stem = false
        @State var null = false
        NavigationView {
            VStack {
                Spacer()
                Text("What is your career interest/current department in which you major in?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .frame(width: 350.0)
                    .padding(.bottom)
                Button("Arts") {
                    art.toggle()
                    if art {
                        subject = "Art"
                        art = false
                    }
                }
                .foregroundStyle(.black)
                .padding()
                .background(.dorange)
                .cornerRadius(7.0)
                Button("Humanities") {
                    humanities.toggle()
                    if humanities {
                        subject = "Humanities"
                        humanities = false
                    }
                }
                .foregroundStyle(.black)
                .padding()
                .background(.dorange)
                .cornerRadius(7.0)
                Button("STEM") {
                    stem.toggle()
                    if stem {
                        subject = "STEM"
                        stem = false
                    }
                }
                .foregroundStyle(.black)
                .padding()
                .background(.dorange)
                .cornerRadius(7.0)
                Button("undecided/not sure") {
                    null.toggle()
                    if null {
                        subject = "Art"
                        null = false
                    }
                }
                .foregroundStyle(.black)
                .padding()
                .background(.dorange)
                .cornerRadius(7.0)
                Spacer()
                NavigationLink(destination: finalquestion()) {
                    Text("next")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(Color("dblue"))
                        .fontWeight(.bold)
                }
            }
        }
            .navigationBarBackButtonHidden(true)
    }
}
    
    struct finalquestion: View {
        var body: some View {
            NavigationView {
                VStack {
                    @State var lowin = false
                    @State var un = false
                    @State var gen = false
                    @State var none = false
                    Spacer()
                    Text("Finally, what is some additional info you want considered?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 350.0)
                        .padding(.bottom)
                    Button("Opprotunities for low income students") {
                        lowin.toggle()
                        if lowin == true {
                            info = "LowIncome"
                            lowin = false
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                    .background(.dorange)
                    .cornerRadius(7.0)
                    Button("Opprotunities for undocumented students") {
                        un.toggle()
                        if un == true {
                            info = "Humanities"
                            un = false
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                    .background(.dorange)
                    .cornerRadius(7.0)
                    Button("Opprotunities for first generation students") {
                        gen.toggle()
                        if gen == true {
                            info = "STEM"
                            un = false
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                    .background(.dorange)
                    .cornerRadius(7.0)
                    Button("none of the above") {
                        none.toggle()
                        if none == true {
                            info = "Art"
                            none  = false
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                    .background(.dorange)
                    .cornerRadius(7.0)
                    Spacer()
                    NavigationLink(destination: allresults()) {
                        Text("next")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color("dblue"))
                            .fontWeight(.bold)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        
    }
    
struct allresults: View {
    var body: some View {
        Text("Based on your results, here are some opprotunities below that might fit your needs.")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(width: 350.0)
                .padding()
        Text("\(sortOptions(opt1: subject, opt2: level, opt3: info, list: extracurricularList))")
            .font(.body)
            .multilineTextAlignment(.center)
            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .padding()
        NavigationLink(destination: ContentView()) {
            Text("Back to home.")
                .multilineTextAlignment(.center)
                .frame(width: 171.0, height: 35.0)
                .foregroundColor(Color.black)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("dorange")/*@END_MENU_TOKEN@*/)
                .cornerRadius(7.0)
        }
    }
}

var extracurricularList = [
    "NYU Arise -- STEM, LowIncome, FirstGen",
    "YoungArts National Arts Competition -- Art, HighSchool, FirstGen",
    "REU (Research Experiences for Undergraduates) Programs -- STEM, College, FirstGen",
    "Posse Foundation Scholars Program -- Humanities, College, LowIncome",
    "New York Academy of Sciences Junior Academy -- STEM, HighSchool, FirstGen",
    "Cooper Union Summer STEM Program -- STEM, HighSchool, LowIncome",
    "CUNY College Now Program -- Humanities, HighSchool, FirstGen"
]

func sortOptions(opt1 : String, opt2: String, opt3: String, list : [String]) ->[String] {
    let fk = [opt1, opt2, opt3]
    var filterOpt: [String] = []
    var filter2: [String] = []
    for x in list {
        if x.contains(fk[0]) {
            filterOpt.append(x)
            }
    }
    for x in list {
        if x.contains(fk[2]) {
            filter2.append(x)
        }
    }

    for x in filterOpt {
        if x.contains(fk[1]) {
            filter2.append(x)
        }
    }
    return filter2
}
    #Preview {
        survey()
    }

