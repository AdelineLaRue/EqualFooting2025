import Foundation
import SwiftUI

struct college: View {
  var body: some View {
    ZStack{
      Color("cream")
        .ignoresSafeArea()
      VStack(spacing:10) {
        Text("Tips and Tricks for.....")
          .fontWeight(.semibold)
          .multilineTextAlignment(.leading)
          .foregroundColor(Color("dorange"))
        VStack(spacing:50){
        Text("Finding the best school for you!")
        .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .foregroundColor(Color("lightblue"))
          Text("Finding the best college for you is like finding a perfect fit shoe; It takes loads of searching to find one that isn’t too big or small, but after loads of digging you’ll find that perfect size! It's a big decision to determine where you would like to spend the next four years of your life, so that takes so some digging! When applying to schools, remember that it's a whole process in itself! It takes time and don't be afraid to ask for help! Apply to fly in programs, which are free, overnight programs that students can go to that cover the cost of housing and transportation fees. Students are able to stay on campus and experience college life for free through these programs.")
            .multilineTextAlignment(.center)
            .foregroundColor(Color("dblue"))
        }
      }
      .padding()
    }
  }
}
#Preview {
  college()
}
