import Foundation
import SwiftUI

struct Sat: View {
  var body: some View {
    ZStack{
      Color("cream")
        .ignoresSafeArea()
      VStack(spacing:10){
        Text("Tips and Tricks for.....")
          .fontWeight(.semibold)
          .multilineTextAlignment(.leading)
          .foregroundColor(Color("dorange"))
        VStack(spacing:30){
        Text("Standardized Testing")
        .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .padding(.horizontal)
          .foregroundColor(Color("lightblue"))
          Text("Standardized Testing comes in many forms: the SAT, ACT or an AP. This year, it is important to note that many colleges have reverted back to their old test mandated option. It’s not too late to take your SAT/ACT. The next SAT testing date is Aug 25 and the next ACT date is Sep 5. Families that qualify for free lunch, may also qualify for test waivers. Contact your school’s guidance department for information about that. The best way to prepare for any of these exams is PRACTICE. As niche as it may sound there are a variety of free resources you can access to help with your studies. At the end of the day, just remember your worth is not defined by your score! Just put in your best effort and give it your all!")
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .foregroundColor(Color("dblue"))
        }
      }
      .padding()
    }
  }
}
#Preview {
  Sat()
}
