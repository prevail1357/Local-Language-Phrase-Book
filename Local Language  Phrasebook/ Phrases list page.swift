//
//  Ndebele phrases list page.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 16/10/2025.
//

import SwiftUI

struct PhraseListView: View {
    let category: PhraseCategory
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                List(category.phrases) { phrase in
                    HStack {
                        VStack{
                            Text(phrase.text)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,10)
                            Text(phrase.translation)
                                .font(.headline)
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }

                        
                        Image(systemName: "speaker.wave.2.fill")
                            .foregroundColor(.green)
                            .font(.title3)
                    }
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.green)
                        .opacity(0.5)
                        .frame(width: 490, height: 10)
                    
                }
               
            }
        }
        .navigationTitle(category.name)
        
        
    }
}



#Preview {
NavigationView {
    LanguageCategoryPage(language: .ndebele)
}
}
