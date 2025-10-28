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
                Phrase( text: "Mhoro", translation: "Hello", audioFileName: "Mhoro"),
                Phrase( text: "Good Morning", translation: "Mangwanani akanaka", audioFileName: "Mangwanani"),
                Phrase( text: "Good Afternoon", translation: "Masikati Akanaka", audioFileName: "Masikati"),
                Phrase( text: "Good Evening", translation: "Manheru Akanaka", audioFileName: "Manheru"),
                Phrase(text: "Good Night", translation: "Urare Zvakanaka", audioFileName: "Urare"),
                Phrase(text: "How are you?", translation: "Uri sei?", audioFileName: "Uri sei"),
                Phrase(text: "How have you been?", translation: "Wanga urisei?", audioFileName: "Wanga urisei"),
                Phrase(text: "What is your name?", translation: "Unonzani?", audioFileName: "Unonzani"),
                Phrase(text: "Where are you from?", translation: "Unobva kupi?", audioFileName: "Unobva kupi")
            ]),
                     PhraseCategory(name: "Emergency", phrases: [
                        Phrase(text: "Help!", translation: "Rubatsiro!", audioFileName: "Rubatsiro"),
                        Phrase(text: "Fire!", translation: "Moto!", audioFileName: "Moto"),
                        Phrase(text: "Thief!", translation: "Mbavha!", audioFileName: "Mbava"),
                        Phrase(text: "Stop!", translation: "Mira!", audioFileName: "Mira"),
                        Phrase(text: "Watch out!", translation: "Chenjerera!", audioFileName: "Chenjerera"),
                        Phrase(text: "Are you okay?", translation: "Uri kunzwa mushe here?", audioFileName: "Uri kunzwa mushe here"),
                        Phrase(text: "Call an ambulance!", translation: "Fonera ambulensi!", audioFileName: "Fonera ambulensi" )
                     ]),
                     PhraseCategory(name: "Common", phrases: [
                        Phrase(text: "Yes", translation: "Hongu", audioFileName: "Hongu"),
                        Phrase(text: "No", translation: "Aihwa", audioFileName: "Ayiwa"),
                        Phrase(text: "Please", translation: "Ndapota", audioFileName: "Ndapota"),
                        Phrase(text: "Thank you", translation: "Tatenda", audioFileName: "Tatenda"),
                        Phrase(text: "Excuse me", translation: "Pamusoroi", audioFileName: "Pamusoroi"),
                        Phrase(text: "You're welcome", translation: "Unogamuchirwa", audioFileName: "Unogamuchirwa"),
                        Phrase(text: "Pardon", translation: "Kangamwiro", audioFileName: "Kananirwo"),
                        Phrase(text: "Just a moment", translation: "Kangamwiro", audioFileName: "Kananirwo"),
                        Phrase(text: "I don't know", translation: "Handizive", audioFileName: "Handizive"),
                     ]),
                     
                     PhraseCategory(name: "Questions", phrases: [
                        Phrase(text: "What?", translation: "Chi-i?", audioFileName: "Chi-i"),
                        Phrase(text: "Which?", translation: "Ndechipi?", audioFileName: "Ndechipi"),
                        Phrase(text: "When?", translation: "Ri-ini?", audioFileName: "Rini"),
                        Phrase(text: "Where", translation: "Kupi?", audioFileName: "Kupi"),
                        Phrase(text: "Why?", translation: "Sei?", audioFileName: "Sei"),
                        Phrase(text: "Who?", translation: "Ani?", audioFileName: "Ani"),
                        Phrase(text: "How many?", translation: "Zvingani?", audioFileName: "Zvingani"),
                        Phrase(text: "How much?", translation: "Ngani?", audioFileName: "Ngani")
                     ]),
                     
                     PhraseCategory(name: "Body Parts", phrases: [
                        
                        Phrase(text: "Head", translation: "Musoro", audioFileName: "Musoro"),
                        Phrase(text: "Hair", translation: "Vhudzi", audioFileName: "Vhudzi"),
                        Phrase(text: "Eyes", translation: "Maziso", audioFileName: "Maziso"),
                        Phrase(text: "Nose", translation: "Mhino", audioFileName: "Mhino"),
                        Phrase(text: "Mouth", translation: "Muromo", audioFileName: "Muromo"),
                        Phrase(text: "Stomach", translation: "Dumbu", audioFileName: "Dumbu"),
                        Phrase(text: "Chest", translation: "Chipfuva", audioFileName: "Chipfuva" ),
                        Phrase(text: "Heart", translation: "Moyo", audioFileName: "Moyo" ),
                        Phrase(text: "Back", translation: "Musana", audioFileName: "Musana" ),
                        Phrase(text: "Skin", translation: "Ganda", audioFileName: "Ganda" )
                     ]),
                     PhraseCategory(name: "Animals", phrases: [
                        Phrase(text: "Lion", translation: "Shumba", audioFileName: "Shumba"),
                        Phrase(text: "Buffalo", translation: "Nyati", audioFileName: "Nyati"),
                        Phrase(text: "Rhino", translation: "Chipembere", audioFileName: "Chipembere"),
                        Phrase(text: "Chicken", translation: "Huku", audioFileName: "Huku"),
                        Phrase(text: "Rabbit", translation: "Tsuro", audioFileName: "Tsuro"),
                        Phrase(text: "Goat", translation: "Mbudzi", audioFileName: "Mbudzi"),
                        Phrase(text: "Cow", translation: "Mombe", audioFileName: "Mombe"),
                        Phrase(text: "Horse", translation: "Bhiza", audioFileName: "Bhiza"),
                        Phrase(text: "Bird", translation: "Shiri", audioFileName: "Shiri"),
                     ]),
                     
                     PhraseCategory(name: "Colors", phrases: [
                        Phrase(text: "White", translation: "Chena", audioFileName: "Chena"),
                        Phrase(text: "Black", translation: "Tema", audioFileName: "Tema"),
                        Phrase(text: "Green", translation: "Zerere", audioFileName: "Zerere"),
                        Phrase(text: "Yellow", translation: "Huroro", audioFileName: "Huroro"),
                        Phrase(text: "Red", translation: "Tsvuku", audioFileName: "Tsvuku"),
                        Phrase(text: "Blue", translation: "Ungu", audioFileName: "Ungu"),
                        Phrase(text: "Purple", translation: "Hute", audioFileName: "Hute"),
                        Phrase(text: "Brown", translation: "Mbise", audioFileName: "Mbise"),
                        Phrase(text: "Silver", translation: "Darejena", audioFileName: "Darejena"),
                        Phrase(text: "Gold", translation: "Ndarama", audioFileName: "Ndarama"),
                        Phrase(text: "Grey", translation: "Pfumbu", audioFileName: "Pfumbu")
                     ]),
                     
                     PhraseCategory(name: "Numbers", phrases: [
                        Phrase(text: "One", translation: "Imwe", audioFileName: "Imwe"),
                        Phrase(text: "Two", translation: "Piri", audioFileName: "Piri"),
                        Phrase(text: "Three", translation: "Tatu", audioFileName: "Tatu"),
                        Phrase(text: "Four", translation: "China", audioFileName: "China"),
                        Phrase(text: "Five", translation: "Shanu", audioFileName: "Shanu"),
                        Phrase(text: "Six", translation: "Tanhatu", audioFileName: "Tanhatu"),
                        Phrase(text: "Seven", translation: "Nomwe", audioFileName: "Nomwe"),
                        Phrase(text: "Eight", translation: "Sere", audioFileName: "Sere"),
                        Phrase(text: "Nine", translation: "Pfumbamwe", audioFileName: "Pfumbamwe"),
                        Phrase(text: "Ten", translation: "Gumi", audioFileName: "Gumi"),
                        Phrase(text: "Eleven", translation: "Gumi naimwe", audioFileName: "GumiNaimwe"),
                        Phrase(text: "Twelve", translation: "Gumi nembiri", audioFileName: "GumiNembire"),
                        Phrase(text: "Twenty", translation: "Makumi maviri", audioFileName: "MakumiMaviri"),
                        Phrase(text: "One Hundred", translation: "Zana", audioFileName: "Zana"),
                        Phrase(text: "One Thousand", translation: "Churu", audioFileName: "Churu")
                        
                     ]),
                     
            ]
            
            
            
            
            
            
            
            
            
            
            
        case .ndebele:
            return [ PhraseCategory( name: "Greetings", phrases:
                [
                    Phrase( text: "Hello", translation: "Sawubona", audioFileName: "Sawubona"),
                    Phrase( text: "Good Morning", translation: "Livuka njani?", audioFileName: "Livukanjani"),
                    Phrase( text: "Good Afternoon", translation: "Litshonile", audioFileName: "Litshonile"),
                    Phrase( text: "Good Evening", translation: "Litshona njani?", audioFileName: "Litshonanjani"),
                    Phrase(text: "Good Night", translation: "Lilale kuhle", audioFileName: "Lalakuhle"),
                    Phrase(text: "How are you?", translation: "Unjani?", audioFileName: "Unjani"),
                    Phrase(text: "What is your name?", translation: "Igama lakho ngubani?", audioFileName: "Igamalakhongubani"),
                    Phrase(text: "Where are you from?", translation: "Uvela ngaphi?", audioFileName: "Uvelangaphi")
                                        ]),
            PhraseCategory(name: "Emergency", phrases: [
                        Phrase(text: "Help!", translation: "Usizo!", audioFileName: "Usizo (1)"),
                        Phrase(text: "Fire!", translation: "Umlilo!", audioFileName: "Umlilo"),
                        Phrase(text: "Thief!", translation: "Isela!", audioFileName: "Isela (1)"),
                        Phrase(text: "Stop!", translation: "Mana!", audioFileName: "Mana (1)"),
                        Phrase(text: "Watch out!", translation: "Qaphela!", audioFileName: "Qaphela (1)"),
                        Phrase(text: "Are you okay?", translation: "Uzizwa kahle na?", audioFileName: "Uzizwa kahle na (1)"),
                        Phrase(text: "Call an ambulance!", translation: "Fonela isibhedlela!", audioFileName: "Fonela isbhedlela (1)" )
                     ]),
                     PhraseCategory(name: "Common", phrases: [
                        Phrase(text: "Yes", translation: "Yebo", audioFileName: "Yebo"),
                        Phrase(text: "No", translation: "Cha", audioFileName: "Cha"),
                        Phrase(text: "Please", translation: "Ngyacela", audioFileName: "Ngiyacela"),
                        Phrase(text: "Thank you", translation: "Ngyabonga", audioFileName: "Ngiyabonga"),
                        Phrase(text: "Excuse me", translation: "Uxolo", audioFileName: "Uxolo"),
                        Phrase(text: "You're welcome", translation: "Kulungile", audioFileName: "Kulungile"),
                        Phrase(text: "Pardon", translation: "Xolela", audioFileName: "Xolela"),
                        Phrase(text: "Just a moment", translation: "Isikhewana...", audioFileName: "Isikhewana"),
                        Phrase(text: "I don't know", translation: "Angikwazi", audioFileName: "Angikwazi"),
                     ]),
                     
                     PhraseCategory(name: "Questions", phrases: [
                        Phrase(text: "What?", translation: "Kuyini?", audioFileName: "Kuyini"),
                        Phrase(text: "Which?", translation: "Kuphi?", audioFileName: "Kuphi"),
                        Phrase(text: "When?", translation: "Nini?", audioFileName: "Nini"),
                        Phrase(text: "Where?", translation: "Ngaphi?", audioFileName: "Ngaphi"),
                        Phrase(text: "Why?", translation: "Kungenxa yani?", audioFileName: "Kungenxa yani"),
                        Phrase(text: "Who?", translation: "Ubani?/ Ngubani?", audioFileName: "Ubani. Ngubani"),
                        Phrase(text: "How many?", translation: "Bangaki?", audioFileName: "Bangaki"),
                        Phrase(text: "How much?", translation: "Yimalini?", audioFileName: "Yimalini")
                        
                     ]),
                     PhraseCategory(name: "Numbers", phrases: [
                        Phrase(text: "One", translation: "Kunye", audioFileName: "Kunye"),
                        Phrase(text: "Two", translation: "Kubili", audioFileName: "Kubili"),
                        Phrase(text: "Three", translation: "Kuthathu", audioFileName: "Kuthathu"),
                        Phrase(text: "Four", translation: "Kune", audioFileName: "Kune"),
                        Phrase(text: "Five", translation: "Kuhlanu", audioFileName: "Kuhlanu"),
                        Phrase(text: "Six", translation: "Isithupha", audioFileName: "Isithupha"),
                        Phrase(text: "Seven", translation: "Isikhombisa", audioFileName: "Isikhombisa"),
                        Phrase(text: "Eight", translation: "Isitshiyangalombili", audioFileName: "Isitshiyangalombili"),
                        Phrase(text: "Nine", translation: "Isitshiyangalolunye", audioFileName: "Isitshiyangalolunye"),
                        Phrase(text: "Ten", translation: "Itshumi", audioFileName: "Itshumi"),
                        Phrase(text: "Eleven", translation: "Itshumilakunye", audioFileName: "Isthumilakunye"),
                        Phrase(text: "Twelve", translation: "Itshumilambili", audioFileName: "Itshumilambili"),
                        Phrase(text: "Twenty", translation: "Amatshumi amabili", audioFileName: "Amatshumi amabili"),
                        Phrase(text: "Thirty", translation: "Amatshumi amathathu", audioFileName: "Amatshumi amathathu")
                        
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
    
    @State private var showMenu: Bool = false
    
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
                .navigationTitle(language == .shona ? "Shona " : "Ndebele ")
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
        LanguageCategoryPage(language: .ndebele)
    }
}
