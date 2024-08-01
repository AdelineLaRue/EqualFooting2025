//
//  list.swift
//  EqualFooting2024
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI
import Foundation

struct Extracurricular: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let keywords: [String]
}

struct list: View {
    @State private var searchText = ""
    
    let extracurriculars: [Extracurricular] = [
        Extracurricular(name: "LEDA Scholars Program", description: "Leadership Enterprise for a Diverse America brings together student leaders for a free five-week residential program at Princeton University, including academic preparation, leadership training, college guidance, SAT/ACT prep, and a college campus experience. The program offers continued support throughout the college application process and beyond.", keywords: ["STEM", "Art", "Humanities", "LowIncome"]),
        
        Extracurricular(name: "Kode with Klossy", description: "Provides coding experience for young female and gender-nonconforming youth. Application Deadline: 4/10.", keywords: ["STEM", "HighSchool", "LowIncome"]),
        
        Extracurricular(name: "National Security Language Initiative for Youth", description: "A U.S. Department of State program offering merit-based scholarships for overseas critical language study to foster international cooperation and interest in foreign languages and cultures. Application opens Mid-August.", keywords: ["STEM", "Art", "Humanities", "HighSchool"]),
        
        Extracurricular(name: "The Sonia & Celina Sotomayor Judicial Internship Program", description: "Encourages diverse and underrepresented high school students in NY to pursue law careers. Interns are paid to work with state or federal judges in NY for July. Application opens December 2024.", keywords: ["Humanities", "LowIncome", "HighSchool", "College"]),
        
        Extracurricular(name: "NY District Attorney's Office High School Internship", description: "A five-week paid internship for Manhattan high school students providing insight into the criminal justice system. Application opens January 2025.", keywords: ["Humanities", "HighSchool", "College"]),
        
        Extracurricular(name: "Science Research Mentorship Program at the American Museum of Natural History", description: "A paid year-long research opportunity for NYC high school students to work with museum scientists. Application opens December 2024.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "Columbia ENG (Engineering the Next Generation)", description: "Offers high school students the chance to work with Columbia Engineering researchers on projects, develop academic and professional skills, and receive a stipend. Application opens January.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "NYU High School Law Institute", description: "A free program offering courses in constitutional law, criminal law, and speech and debate every Saturday throughout the academic year. Applications open August 2024.", keywords: ["Humanities", "LowIncome", "HighSchool"]),
        
        Extracurricular(name: "NYU Applied Research In Science and Engineering (ARISE)", description: "Provides NY high school students with research opportunities in NYU facilities under the guidance of NYU students. Participants receive a stipend. Applications open January 2025.", keywords: ["STEM", "HighSchool", "LowIncome"]),
        
        Extracurricular(name: "MIT Lincoln Laboratory Radar Introduction for Student Engineers (LLRISE)", description: "A free two-week summer workshop at MIT teaching students to build a small radar system. Application opens January 2025.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "MIT RSI", description: "A highly selective, free six-week research program at MIT for high school students. Applications open Fall 2024.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "MITES", description: "MIT Introduction to Technology, Engineering, and Science offers both on-campus and virtual options. Free of cost, including food and boarding for on-campus programs. Applications open Fall 2024.", keywords: ["STEM", "HighSchool", "LowIncome"]),
        
        Extracurricular(name: "ArtsLife Interns", description: "A paid summer internship combining art and design with leadership training, museum studies, and community engagement. Participants work on collaborative projects with museum staff and arts professionals. Application opens April 2025.", keywords: ["Art", "HighSchool"]),
        
        Extracurricular(name: "Ghetto Film School New York Fellows Program", description: "Provides high school students with over 1,000 hours of immersive, college-level cinematic training. Free of charge, includes instruction from leading filmmakers, set visits, and international travel experiences. Application opens January 2025.", keywords: ["Art", "HighSchool", "LowIncome"]),
        
        Extracurricular(name: "ArtsWestchester Arts-in-Education Intern", description: "Provides administrative support for arts education programs, including youth art workshops and professional development for artists. Interns assist with research, communication, and event planning.", keywords: ["Art", "HighSchool"]),
        
        Extracurricular(name: "The Bronx Museum Teen Summer", description: "A four-week paid internship involving collaborative art exploration, community engagement, and creating a media and art exhibition. Focuses on art, community, and museum roles.", keywords: ["Art", "HighSchool"]),
        
        Extracurricular(name: "Wave Hill Art, Community, Education and Science Internship", description: "Offers students practical experience and informal STEAM education through assisting with Family Art Project and affiliated family storytime program. Application opens Winter 2025.", keywords: ["Art", "HighSchool"]),
        
        Extracurricular(name: "Brooklyn Museum Apprentice Program", description: "A paid internship allowing NYC teens to explore art and museum education, create lessons for diverse audiences, and meet artists and curators. Focuses on art and museum education.", keywords: ["Art", "HighSchool"]),
        
        Extracurricular(name: "The Bronx Museum Teen Council", description: "An intensive after-school program for teens to engage with contemporary art, create art related to youth issues, and gain experience in collaboration and curation.", keywords: ["Art", "HighSchool"]),
        
        Extracurricular(name: "Sadie Nash Summer Institute", description: "A six-week summer program focused on leadership skills and community building for young women and gender-expansive youth. Participants explore their leadership potential and connect with peers.", keywords: ["STEM", "Art", "Humanities", "HighSchool"]),
        
        Extracurricular(name: "The Forest Project", description: "Provides hands-on experience in horticulture and environmental restoration through working with zone gardeners. Interns receive a $1,000 stipend upon completing 50 service hours.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "Urban Barcode Project (UBP)", description: "A symposium where students, in teams with professional sponsors, devise and submit proposals for DNA barcode experiments. Selected proposals advance to a final symposium.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "Stony Brook University: Simons Summer Research Program", description: "Offers hands-on lab experience in science, math, or engineering for high school students, including research techniques and campus life. Interns are matched with program mentors.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "City Limits", description: "Trains students in journalism, research, interviewing, and reporting with English-language and bilingual cohorts. Focuses on developing journalism skills.", keywords: ["Humanities", "HighSchool"]),
        
        Extracurricular(name: "Thurgood Marshall Summer Law Internship", description: "Partners with law firms, corporations, non-profits, and government agencies to provide high school students with networking and career guidance. Focuses on law careers.", keywords: ["Humanities", "HighSchool"]),
        
        Extracurricular(name: "Manhattan District Attorney Internship Program", description: "A five-week internship for high school students involving workshops, mock trials, and office work, providing insight into sociology, criminology, and politics.", keywords: ["Humanities", "HighSchool"]),
        
        Extracurricular(name: "Ladders for Leaders", description: "Helps high school students find internships and gain work experience with a focus on leadership and networking opportunities. Paid internships at least $15/hr.", keywords: ["Humanities", "Art", "STEM", "HighSchool"]),
        
        Extracurricular(name: "Carnegie Mellon University: Pre-College Summer Programs - AI Scholars", description: "A four-week program exploring artificial intelligence with researchers at Carnegie Mellon University. Includes tuition, housing, and meals.", keywords: ["STEM", "HighSchool", "LowIncome"]),
        
        Extracurricular(name: "Girls Who Code Summer Immersion Program", description: "A program for high school students who identify as girls or non-binary to gain coding experience. No prior computer science experience required.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "Arthur Ashe Institute for Urban Health's Health Science Academy", description: "A 3-year high school program for academically talented students interested in health sciences. Classes are held weekly and include a commitment through senior year.", keywords: ["STEM", "HighSchool", "LowIncome"]),
        
        Extracurricular(name: "National Institutes of Health Summer Internship Program", description: "Offers research opportunities in biomedical, behavioral, and social sciences for 11th and 12th graders interested in careers in research and healthcare.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "Columbia HK Maker Lab (Hypothekids)", description: "An engineering design-focused summer program with Columbia University for students graduating in 2025 or 2026, including coursework and hands-on applications. Completion may lead to a paid research internship.", keywords: ["STEM", "HighSchool"]),
        
        Extracurricular(name: "NASA OSTEM", description: "Paid internships offering practical work experience at NASA centers or facilities, or remotely. Provides opportunities to work with scientists and engineers.", keywords: ["STEM, HighSchool"]) ]

    
    var filteredExtracurriculars: [Extracurricular] {
        if searchText.isEmpty {
            return extracurriculars
        } else {
            return extracurriculars.filter { extracurricular in
                extracurricular.name.localizedCaseInsensitiveContains(searchText) ||
                extracurricular.description.localizedCaseInsensitiveContains(searchText) ||
                extracurricular.keywords.joined(separator: " ").localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
            
            NavigationView {
                
                VStack{
                    Text("Extracurriculars")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ddorange"))
                        .multilineTextAlignment(.leading)
                    SearchBar(text: $searchText)
                        .padding(.top, -20)
                    List(filteredExtracurriculars) { extracurricular in
                        VStack(alignment: .leading) {
                            Text(extracurricular.name)
                                .font(.headline)
                                .padding(.bottom, 1)
                            
                            Text(extracurricular.description)
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.bottom, 1)
                            
                            HStack {
                                ForEach(extracurricular.keywords, id: \.self) { keyword in
                                    Text(keyword)
                                        .font(.caption)
                                        .padding(6)
                                        .background(Color.blue.opacity(0.1))
                                        .cornerRadius(4)
                                }
                                
                            }
                        }
                        
                        .padding()
                        .background(Color.dorange) // Background color for each item CHANGE COLOR
                        .cornerRadius(8) // Rounded corners
                        .shadow(radius: 2) // Optional: shadow for better appearance
                    }
                    .listStyle(PlainListStyle())
                }
               
            }
            
        }
    
            //nav bar colors
          
        
            }
        


struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search..."
        searchBar.returnKeyType = .done
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()
        }
    }
}

#Preview {
  list()
}

