//
//  Language Category Page .swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 20/10/2025.
//

import SwiftUI


struct LanguageSelectionPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(AngularGradient(gradient: Gradient(colors: [Color.green, Color.white]), center: .bottom, angle: .degrees(355)))
                    .frame(width: 430, height: 990)
                VStack {
                    
                    Text("Select Language")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(30)
                  
                    NavigationLink{LanguageCategoryPage(language: .ndebele)}label: {
                        ZStack{
                          RoundedRectangle(cornerRadius: 20)
                                .fill(AngularGradient(gradient: Gradient(colors: [Color.white, Color.green]), center: .bottom, angle: .degrees(365)))
                                .frame(width: 390, height: 90)
                            Text("Ndebele")
                                .foregroundColor(.indigo)
                                .font(.title)
                                .fontWeight(.bold)
                                .fontDesign(.rounded)
                        }
                    }
                            
                    NavigationLink{LanguageCategoryPage(language: .shona)}label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(AngularGradient(gradient: Gradient(colors: [Color.white, Color.green]), center: .bottom, angle: .degrees(365)))
                                .frame(width: 390, height: 90)
                       Text("Shona")
                                .foregroundColor(.indigo)
                                .font(.title)
                                .fontWeight(.bold)
                                .fontDesign(.rounded)
                        }
                    }
                        
                    NavigationLink{LanguageCategoryPage(language: .sepedi)}label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(AngularGradient(gradient: Gradient(colors: [Color.white, Color.green]), center: .bottom, angle: .degrees(365)))
                                .frame(width: 390, height: 90)
                       Text("Sepedi")
                                .foregroundColor(.indigo)
                                .font(.title)
                                .fontWeight(.bold)
                                .fontDesign(.rounded)
                        }
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    LanguageSelectionPage()
}
