//
//  Ndebele Category page.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 20/10/2025.
//

import SwiftUI

enum Language{
    case shona
    case ndebele
    
}

struct Phrase: Identifiable{
    let id = UUID()
    let text: String
    let translation: String
    let audioFileName: String
}

struct PhraseCategory: Identifiable{
    let id = UUID()
    let name: String
    let phrases: [Phrase]
}

struct LanguageCategoryPage: View {
    let language: Language
    
    var categories: [PhraseCategory] {
        switch language {
        case .shona:
            return [ PhraseCategory( name: "Greetings", phrases:[
                Phrase( text: "Mhoro", translation: "Hello", audioFileName: " Say Mhoro"),
                Phrase( text: "Good Morning", translation: "Mangwanani akanaka", audioFileName: " Say Mangwanani"),
                Phrase( text: "Good Afternoon", translation: "Masikati Akanaka", audioFileName: " Say Masikati"),
                Phrase( text: "Good Evening", translation: "Manheru Akanaka", audioFileName: " Say Manheru akanaka"),
                Phrase(text: "Good Night", translation: "Urare Zvakanaka", audioFileName: "say urare zvakanaka"),
                Phrase(text: "How are you?", translation: "Uri sei?", audioFileName: "say uri sei"),
                Phrase(text: "How have you been?", translation: "Wanga urisei?", audioFileName: "say wanga urisei"),
                Phrase(text: "What is is your name?", translation: "Unonzani?", audioFileName: "say unonzani"),
                Phrase(text: "Where are you from?", translation: "Unobva kupi?", audioFileName: "")
            ]),
                     PhraseCategory(name: "Emergency", phrases: [
                        Phrase(text: "Help!", translation: "Rubatsiro!", audioFileName: "say Rubatsiro"),
                        Phrase(text: "Fire!", translation: "Moto!", audioFileName: "say moto"),
                        Phrase(text: "Thief!", translation: "Mbavha!", audioFileName: "say mbavha"),
                        Phrase(text: "Stop!", translation: "Mira!", audioFileName: "say mira"),
                        Phrase(text: "Watch out!", translation: "Chenjerera!", audioFileName: "say chanjerea"),
                        Phrase(text: "Are you okay?", translation: "Uri kunzwa mushe here?", audioFileName: ""),
                        Phrase(text: "Call an ambulance!", translation: "Fonera ambulensi!", audioFileName: "" )
                     ]),
                     PhraseCategory(name: "Common", phrases: [
                        Phrase(text: "Yes", translation: "Hongu", audioFileName: ""),
                        Phrase(text: "No", translation: "Aihwa", audioFileName: ""),
                        Phrase(text: "Please", translation: "Ndapota", audioFileName: ""),
                        Phrase(text: "Thank you", translation: "Tatenda", audioFileName: ""),
                        Phrase(text: "Excuse me", translation: "Pamusoroi", audioFileName: ""),
                        Phrase(text: "You're welcome", translation: "Unogamuchirwa", audioFileName: ""),
                        Phrase(text: "Pardon", translation: "Kangamwiro", audioFileName: ""),
                        Phrase(text: "Just a moment", translation: "Kangamwiro", audioFileName: ""),
                        Phrase(text: "I don't know", translation: "Handizive", audioFileName: ""),
                     ]),
                     
                     PhraseCategory(name: "Questions", phrases: [
                        Phrase(text: "What?", translation: "Chi-i?", audioFileName: ""),
                        Phrase(text: "Which?", translation: "Izvo?", audioFileName: ""),
                        Phrase(text: "When?", translation: "Ri-ini?", audioFileName: ""),
                        Phrase(text: "Where", translation: "Kupi?", audioFileName: ""),
                        Phrase(text: "Why?", translation: "Sei?", audioFileName: ""),
                        Phrase(text: "Who?", translation: "Ani?", audioFileName: ""),
                        Phrase(text: "How many?", translation: "Zvingani?", audioFileName: ""),
                        Phrase(text: "How much?", translation: "Ngani?", audioFileName: "")
                     ]),
                     
                     PhraseCategory(name: "Body Parts", phrases: [
                        
                        Phrase(text: "Head", translation: "Musoro", audioFileName: ""),
                        Phrase(text: "Hair", translation: "Vhudzi", audioFileName: ""),
                        Phrase(text: "Eyes", translation: "Maziso", audioFileName: ""),
                        Phrase(text: "Nose", translation: "Mhino", audioFileName: ""),
                        Phrase(text: "Mouth", translation: "Muromo", audioFileName: ""),
                        Phrase(text: "Stomach", translation: "Dumbu", audioFileName: ""),
                        Phrase(text: "Chest", translation: "Chipfuva", audioFileName: "" ),
                        Phrase(text: "Heart", translation: "Moyo", audioFileName: "" ),
                        Phrase(text: "Back", translation: "Musana", audioFileName: "" ),
                        Phrase(text: "Skin", translation: "Ganda", audioFileName: "" )
                     ]),
                     PhraseCategory(name: "Animals", phrases: [
                        Phrase(text: "Lion", translation: "Shumba", audioFileName: ""),
                        Phrase(text: "Buffalo", translation: "Nyati", audioFileName: ""),
                        Phrase(text: "Rhino", translation: "Chipembere", audioFileName: ""),
                        Phrase(text: "Chicken", translation: "Huku", audioFileName: ""),
                        Phrase(text: "Rabbit", translation: "Tsuro", audioFileName: ""),
                        Phrase(text: "Goat", translation: "Mbudzi", audioFileName: ""),
                        Phrase(text: "Cow", translation: "Mombe", audioFileName: ""),
                        Phrase(text: "Horse", translation: "Bhiza", audioFileName: ""),
                        Phrase(text: "Bird", translation: "Shiri", audioFileName: ""),
                     ]),
                     
                     PhraseCategory(name: "Colors", phrases: [
                        Phrase(text: "White", translation: "Chena", audioFileName: ""),
                        Phrase(text: "Black", translation: "Tema", audioFileName: ""),
                        Phrase(text: "Green", translation: "Zerere", audioFileName: ""),
                        Phrase(text: "Yellow", translation: "Huroro", audioFileName: ""),
                        Phrase(text: "Red", translation: "Tsvuku", audioFileName: ""),
                        Phrase(text: "Blue", translation: "Ungu", audioFileName: ""),
                        Phrase(text: "Purple", translation: "Hute", audioFileName: ""),
                        Phrase(text: "Brown", translation: "Mbise", audioFileName: ""),
                        Phrase(text: "Silver", translation: "Darejena", audioFileName: ""),
                        Phrase(text: "Gold", translation: "Ndarama", audioFileName: ""),
                        Phrase(text: "Grey", translation: "Pfumbu", audioFileName: "")
                     ]),
                     
                     PhraseCategory(name: "Numbers", phrases: [
                        Phrase(text: "One", translation: "Imwe", audioFileName: ""),
                        Phrase(text: "Two", translation: "Piri", audioFileName: ""),
                        Phrase(text: "Three", translation: "Tatu", audioFileName: ""),
                        Phrase(text: "Four", translation: "China", audioFileName: ""),
                        Phrase(text: "Five", translation: "Shanu", audioFileName: ""),
                        Phrase(text: "Six", translation: "Tanhatu", audioFileName: ""),
                        Phrase(text: "Seven", translation: "Nomwe", audioFileName: ""),
                        Phrase(text: "Eight", translation: "Sere", audioFileName: ""),
                        Phrase(text: "Nine", translation: "Pfumbamwe", audioFileName: ""),
                        Phrase(text: "Ten", translation: "Gumi", audioFileName: ""),
                        Phrase(text: "Eleven", translation: "Gumi naimwe", audioFileName: ""),
                        Phrase(text: "Twelve", translation: "Gumi nembiri", audioFileName: ""),
                        Phrase(text: "Twenty", translation: "Makumi maviri", audioFileName: ""),
                        Phrase(text: "One Hundred", translation: "Zana", audioFileName: ""),
                        Phrase(text: "One Thousand", translation: "Churu", audioFileName: "")
                        
                     ]),
                     
            ]
        case .ndebele:
            return [ PhraseCategory( name: "Greetings", phrases:
                [
                    Phrase( text: "Hello", translation: "Sawubona", audioFileName: ""),
                    Phrase( text: "Good Morning", translation: "Livuka njani?", audioFileName: ""),
                    Phrase( text: "Good Afternoon", translation: "Litshonile", audioFileName: ""),
                    Phrase( text: "Good Evening", translation: "Litshona njani?", audioFileName: ""),
                    Phrase(text: "Good Night", translation: "Lilale kuhle", audioFileName: ""),
                    Phrase(text: "How are you?", translation: "Unjani?", audioFileName: "say uri sei"),
                    Phrase(text: "How have you been?", translation: "Kade Unjani?", audioFileName: ""),
                    Phrase(text: "What is your name?", translation: "Igama lakho ngubani?", audioFileName: ""),
                    Phrase(text: "Where are you from?", translation: "Uvela ngaphi?", audioFileName: "")
                                        ]),
            PhraseCategory(name: "Emergency", phrases: [
                        Phrase(text: "Help!", translation: "Uncedo!", audioFileName: ""),
                        Phrase(text: "Fire!", translation: "Umlilo!", audioFileName: ""),
                        Phrase(text: "Thief!", translation: "Isela!", audioFileName: ""),
                        Phrase(text: "Stop!", translation: "Mana!", audioFileName: ""),
                        Phrase(text: "Watch out!", translation: "Qaphela!", audioFileName: ""),
                        Phrase(text: "Are you okay?", translation: "Uzizwa kahle na?", audioFileName: ""),
                        Phrase(text: "Call an ambulance!", translation: "Fonela isibhedlela!", audioFileName: "" )
                     ]),
                     PhraseCategory(name: "Common", phrases: [
                        Phrase(text: "Yes", translation: "Yebo", audioFileName: ""),
                        Phrase(text: "No", translation: "Cha", audioFileName: ""),
                        Phrase(text: "Please", translation: "Ngyacela", audioFileName: ""),
                        Phrase(text: "Thank you", translation: "Ngyabonga", audioFileName: ""),
                        Phrase(text: "Excuse me", translation: "Uxolo", audioFileName: ""),
                        Phrase(text: "You're welcome", translation: "Kulungile", audioFileName: ""),
                        Phrase(text: "Pardon", translation: "Xolela", audioFileName: ""),
                        Phrase(text: "Just a moment", translation: "Isikhewana", audioFileName: ""),
                        Phrase(text: "I don't know", translation: "Angikwazi", audioFileName: ""),
                     ]),
                     
                     PhraseCategory(name: "Questions", phrases: [
                        Phrase(text: "What?", translation: "Kuyini?", audioFileName: ""),
                        Phrase(text: "Which?", translation: "Kphi?", audioFileName: ""),
                        Phrase(text: "When?", translation: "Nini?", audioFileName: ""),
                        Phrase(text: "Where?", translation: "Ngaphi?", audioFileName: ""),
                        Phrase(text: "Why?", translation: "Yini?", audioFileName: ""),
                        Phrase(text: "Who?", translation: "Ubani?/ Ngubani?", audioFileName: ""),
                        Phrase(text: "How many?", translation: "Bangaki?", audioFileName: ""),
                        Phrase(text: "How much?", translation: "Yimalini?", audioFileName: "")
                        
                     ]),
                     PhraseCategory(name: "Numbers", phrases: [
                        Phrase(text: "One", translation: "Kunye", audioFileName: ""),
                        Phrase(text: "Two", translation: "Kubili", audioFileName: ""),
                        Phrase(text: "Three", translation: "Kuthathu", audioFileName: ""),
                        Phrase(text: "Four", translation: "Kune", audioFileName: ""),
                        Phrase(text: "Five", translation: "Kuhlanu", audioFileName: ""),
                        Phrase(text: "Six", translation: "Isithupha", audioFileName: ""),
                        Phrase(text: "Seven", translation: "Isikhimbisa", audioFileName: ""),
                        Phrase(text: "Eight", translation: "Isitshiyangalombili", audioFileName: ""),
                        Phrase(text: "Nine", translation: "Isitshiyangalolunye", audioFileName: ""),
                        Phrase(text: "Ten", translation: "Itshumi", audioFileName: ""),
                        Phrase(text: "Eleven", translation: "Itshumilakunye", audioFileName: ""),
                        Phrase(text: "Twelve", translation: "Itshumilambili", audioFileName: ""),
                        Phrase(text: "Twenty", translation: "Amatshumi amabili", audioFileName: ""),
                        Phrase(text: "Thirty", translation: "Amatshumi amathathu", audioFileName: "")
                        
                     ]),
            ]
        }
        
    }
    
    @State private var searchBar = ""
    
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
                LinearGradient(colors: [.white, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .opacity(0.5)
                    .ignoresSafeArea()
                
                VStack{
                    
                    if searchBar.isEmpty{
                        ScrollView{
                            
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
                        List(allPhrases) { phrase in
                            VStack{
                                Text(phrase.text)
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(phrase.translation)
                                    .foregroundColor(.blue)
                                    .font(.subheadline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                }
            }
            .navigationTitle(language == .shona ? "Shona " : "Ndebele ")
            .searchable(text: $searchBar, placement: .navigationBarDrawer, prompt: "Search Phrase")
            
            
        }
    }
}



#Preview {
    NavigationView {
        LanguageCategoryPage(language: .shona)
    }
}
