//
//  Ndebele Category page.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 20/10/2025.
//

import SwiftUI



struct LanguageCategoryPage: View {
    let language: Language
    
    @State private var searchBar = ""
    @State private var showMenu: Bool = false
    
    var categories: [PhraseCategory] {
        PhraseData.categories(for: language)
            }
    
    var allPhrases: [Phrase]{
        categories.flatMap{$0.phrases}
    }
    
    var filteredPhrases: [Phrase]{
        guard !searchBar.isEmpty else{return []}
        
        return allPhrases.filter{ phrase in
            phrase.text.localizedCaseInsensitiveContains(searchBar) ||
            phrase.translation.localizedCaseInsensitiveContains(searchBar)
            
        }
    }
    
    
   
    
    var body: some View {
        NavigationStack{
            ZStack{
                ZStack{
                    LinearGradient(colors: [.white, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .opacity(0.5)
                        .ignoresSafeArea()
                    
                    VStack{
                        if searchBar.isEmpty{
                            ScrollView{
                                Spacer(minLength: 5)
                                ForEach(categories) { category in
                                    NavigationLink(destination: PhraseListView(category: category)){
                                        Text(category.name)
                                            .font(.title)
                                            .foregroundColor(.black)
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                            }
                        }else{
                            List(filteredPhrases) { phrase in
                                VStack{
                                    Text(phrase.text)
                                        .font(.headline)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text(phrase.translation)
                                        .foregroundColor(.blue)
                                        .font(.subheadline)
                                        .frame( maxWidth: .infinity, alignment: .leading)
                                }
                            }
                        }
                    }
                    
                    SideMenuView(isShowing: $showMenu)
                }
                .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
                .navigationTitle({
                    switch language {
                    case .shona:
                        return "Shona"
                    case .ndebele:
                        return "Ndebele"
                    case .sepedi:
                        return "Sepedi"
                    }
                } ()
                )
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing){
                        Button(action: {
                            showMenu.toggle()
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                        })
                    }
                }
                .searchable(text: $searchBar,placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Search phrases")
            }
            }
        }
    }



#Preview {
    NavigationStack {
        LanguageCategoryPage(language: .sepedi)
    }
}
