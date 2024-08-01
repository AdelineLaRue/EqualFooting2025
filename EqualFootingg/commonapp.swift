import Foundation
import SwiftUI

struct commonapp: View {
  var body: some View {
    ZStack{
      Color("cream")
        .ignoresSafeArea()
      VStack(spacing:10) {
        Text("Tips and Tricks for.....")
          .foregroundColor(Color("dorange"))
          .fontWeight(.semibold)
          .multilineTextAlignment(.leading)
        VStack(spacing:30){
        Text("Common App")
        .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .foregroundColor(Color("lightblue"))
          Text("What is the Common App? The Common App (short for Common Application) is the platform most commonly used by students to apply to colleges and universities worldwide. While some colleges may have their own portals to submit applications (ex UCs), many use Common App. The Common App is NOW LIVE. You should create a new email account to use solely for college and make your common app account using that email. Once you’re in the portal, fill out the general information (family demographics, transcripts, extracurriculars, testing) now, so that all that’s left to do is get those supplements in. Common App allows you to rank only your top 10 extracurriculars, so be mindful of that when filling out that section. See the links below with more info to best familiarize yourself with Common App.")
            .multilineTextAlignment(.center)
            .foregroundColor(Color("dblue"))
        }
      }
      .padding()
    }
  }
}
#Preview {
  commonapp()
}
