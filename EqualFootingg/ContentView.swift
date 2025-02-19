// ContentView.swift
// EqualFooting2024
//
// Created by Scholar on 7/30/24.
//
import SwiftUI
struct ContentView: View {
  @State private var selectedIndex: Int = 0
  var body: some View {
      //navigation bar
      TabView(selection: $selectedIndex) {
          NavigationStack() {
              VStack(spacing:20){
                Link("CareerOneStop", destination: URL(string: "https://www.careeronestop.org/")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("Fastweb", destination: URL(string: "https://www.fastweb.com/")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("Project Empower: Illuminate", destination: URL(string: "https://illuminate.projectempower.io/")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("RoundPier", destination: URL(string: "https://www.roundpier.com")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("StandOut Search", destination: URL(string: "https://www.standoutsearch.com/")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("Talem", destination: URL(string: "https://www.talem.org/extracurriculars")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("The Door", destination: URL(string: "https://www.door.org/career/")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
                Link("TeenLife", destination: URL(string: "https://www.teenlife.com/")!)
                  .foregroundStyle(.black)
                  .padding()
                  .background(.lightblue)
                  .cornerRadius(20)
            }
              NavigationLink(destination: ContentView()) {
              }
              .navigationTitle("Research")
            }
            .tabItem {
              Text("Research")
              Image(systemName: "house.fill")
                .renderingMode(.template)
            }
            .tag(0)
        NavigationStack(){
          Text("")
            .navigationTitle("List")
          list()
        }
        .tabItem{
          Text("List")
          Image(systemName: "book.pages.fill")
        }
        .tag(1)
        NavigationStack() {
          Text("")
            .navigationTitle("Filter")
            search()
        }
        .tabItem {
          Text("Filter")
          Image(systemName: "line.3.horizontal.decrease.circle.fill")
        }
        .tag(2)
        NavigationStack() {
          Text("")
            .navigationTitle("Info")
          infoPage()
        }
        .tabItem {
          Text("Info")
          Image(systemName: "info.circle")
        }
        .tag(3)
      }
      //nav bar colors
      //1
      .tint(.dorange)
      .onAppear(perform: {
        //2
        UITabBar.appearance().unselectedItemTintColor = .lightorange
        //4
        UITabBar.appearance().backgroundColor = .dblue
        //5
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.ddorange]
      })
    }
  }
#Preview {
  ContentView()
}
