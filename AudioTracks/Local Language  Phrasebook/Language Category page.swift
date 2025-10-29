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
    case sepedi
    
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
                     PhraseCategory(name: "Body Parts", phrases: [
                        
                        Phrase(text: "Head", translation: "Ikhanda", audioFileName: "Ikhanda"),
                        Phrase(text: "Hair", translation: "Inwele", audioFileName: "Inwele"),
                        Phrase(text: "Eyes", translation: "Amehlo", audioFileName: "Amehlo"),
                        Phrase(text: "Nose", translation: "Amakhala", audioFileName: "Amakhala"),
                        Phrase(text: "Mouth", translation: "Umlomo", audioFileName: "Umlomo"),
                        Phrase(text: "Stomach", translation: "Isisu", audioFileName: "Isisu"),
                        Phrase(text: "Chest", translation: "Isifuba", audioFileName: "Isifuba" ),
                        Phrase(text: "Heart", translation: "Inhliziyo", audioFileName: "Inhliziyo" ),
                        Phrase(text: "Back", translation: "Iqolo", audioFileName: "Iqolo" ),
                        Phrase(text: "Skin", translation: "Isikhumba", audioFileName: "Isikhumba" )
                     ]),
                     PhraseCategory(name: "Animals", phrases: [
                        Phrase(text: "Lion", translation: "Isilwane", audioFileName: "Isilwane"),
                        Phrase(text: "Buffalo", translation: "Inyathi", audioFileName: "Inyathi"),
                        Phrase(text: "Rhino", translation: "Ubhejana", audioFileName: "Ubhejana"),
                        Phrase(text: "Chicken", translation: "Inkukhu", audioFileName: "Inkukhu"),
                        Phrase(text: "Rabbit", translation: "Umvundla", audioFileName: "Umvundla"),
                        Phrase(text: "Goat", translation: "Imbuzi", audioFileName: "Umbuzi"),
                        Phrase(text: "Cow", translation: "Inkomo", audioFileName: "Inkomo"),
                        Phrase(text: "Horse", translation: "Ibhiza", audioFileName: "Ibhiza"),
                        Phrase(text: "Bird", translation: "Inyoni", audioFileName: "Inyoni"),
                     ]),
                     
                     PhraseCategory(name: "Colors", phrases: [
                        Phrase(text: "White", translation: "Mhlophe", audioFileName: "Mhlophe"),
                        Phrase(text: "Black", translation: "Mnyama", audioFileName: "Mnyama"),
                        Phrase(text: "Green", translation: "Luhlaza", audioFileName: "Luhlazs"),
                        Phrase(text: "Yellow", translation: "Lithanga", audioFileName: "Lithanga"),
                        Phrase(text: "Red", translation: "Kubomvu", audioFileName: "Kubomvu"),
                        Phrase(text: "Blue", translation: "Isibhakabhaka", audioFileName: "Isibhakabhaka"),
                        Phrase(text: "Purple", translation: "Bubende", audioFileName: "Bubende"),
                        Phrase(text: "Brown", translation: "Nsundu", audioFileName: "Nsundu"),
                        Phrase(text: "Silver", translation: "Siliva", audioFileName: "Siliva"),
                        Phrase(text: "Gold", translation: "Golide", audioFileName: "Golide"),
                        Phrase(text: "Grey", translation: "Ludaka", audioFileName: "Ludaka")
                     ]),
                     
            ]
            
            
            
            
            
            
            
            
case .sepedi:
  return [
    PhraseCategory( name: "Greetings", phrases:
                    [
        Phrase( text: "Hello", translation: "Dumela", audioFileName: "Sawubona"),
        Phrase( text: "Good Morning", translation: "Otsogile bjang?", audioFileName: "Livukanjani"),
        Phrase( text: "Good Afternoon", translation: "Le hlwile bjang", audioFileName: "Litshonile"),
        Phrase( text: "Good Afternoon, how about you", translation: "Re hlwile gabotse, re botsisa lena", audioFileName: "Litshonile"),
        Phrase( text: "Good Evening", translation: "Dumelang?", audioFileName: "Litshonanjani"),
        Phrase(text: "Good Night", translation: "Urobale gabotse", audioFileName: "Lalakuhle"),
        Phrase(text: "How are you?", translation: "O bjang?", audioFileName: "Unjani"),
        Phrase(text: "I'm fine, how are you?", translation: "Ke gona, o bjang?", audioFileName: "Unjani"),
        Phrase(text: "What is your name?", translation: "Lebitso lagago ke mang?", audioFileName: "Igamalakhongubani"),
        Phrase(text: "See you tommorrow", translation: "Ke tla go bona kamtswana", audioFileName: "Igamalakhongubani"),
        Phrase(text: "Where are you from?", translation: "Otšwa kae?", audioFileName: "Uvelangaphi")
                                            ]),
    PhraseCategory(name: "Emergency", phrases: [
        Phrase(text: "Help!", translation: "Thušo", audioFileName: "Usizo (1)"),
        Phrase(text: "Fire!", translation: "Mollo!", audioFileName: "Umlilo"),
        Phrase(text: "Thief!", translation: "Lehodu!", audioFileName: "Isela (1)"),
        Phrase(text: "Stop!", translation: "Yema!", audioFileName: "Mana (1)"),
        Phrase(text: "Watch out!", translation: "Hlokomela!", audioFileName: "Qaphela (1)"),
        Phrase(text: "Are you okay?", translation: "O sharp?", audioFileName: "Uzizwa kahle na (1)"),
        Phrase(text: "I'm okay", translation: "Kelokile", audioFileName: "Uzizwa kahle na (1)"),
        Phrase(text: "Call an ambulance!", translation: "Bitsa ambulense!", audioFileName: "Fonela isbhedlela (1)" )
                         ]),
    
    
    PhraseCategory(name: "Common", phrases: [
        Phrase(text: "Yes", translation: "Ee", audioFileName: "Yebo"),
        Phrase(text: "No", translation: "Aowa", audioFileName: "Cha"),
        Phrase(text: "Please", translation: "Kyagopela", audioFileName: "Ngiyacela"),
        Phrase(text: "Thank you", translation: "Kea leboga", audioFileName: "Ngiyabonga"),
        Phrase(text: "Excuse me", translation: "Tshwarelo", audioFileName: "Uxolo"),
        Phrase(text: "You're welcome", translation: "Le amogetšwe", audioFileName: "Kulungile"),
        Phrase(text: "Pardon", translation: "Tshwrelo", audioFileName: "Xolela"),
        Phrase(text: "Just a moment", translation: "Motsotswana feela", audioFileName: "Isikhewana"),
        Phrase(text: "I don't know", translation: "Aketsebe", audioFileName: "Angikwazi"),
        Phrase(text: "I speak english", translation: "Ke bolela sekgowa", audioFileName: "Angikwazi"),
        Phrase(text: "I'm learning Sepedi", translation: "Ke ithuta Sepedi", audioFileName: "Angikwazi"),
        Phrase(text: "Again", translation: "Gape", audioFileName: "Angikwazi"),
                         ]),
                
    
    
    PhraseCategory(name: "Questions", phrases: [
        Phrase(text: "Questions", translation: "Diputśišo", audioFileName: "Kuyini"),
        Phrase(text: "What?", translation: "Eng?", audioFileName: "Kuyini"),
        Phrase(text: "How?", translation: "Bjang?", audioFileName: "Kuyini"),
        Phrase(text: "Which?", translation: "Sefe?", audioFileName: "Kuphi"),
        Phrase(text: "When?", translation: "Neng?", audioFileName: "Nini"),
        Phrase(text: "Where?", translation: "Kae?", audioFileName: "Ngaphi"),
        Phrase(text: "Why?", translation: "Goreng?", audioFileName: "Kungenxa yani"),
        Phrase(text: "Who?", translation: "Mang?", audioFileName: "Ubani. Ngubani"),
        Phrase(text: "How many?", translation: "Di kae?", audioFileName: "Bangaki"),
        Phrase(text: "Because", translation: "Gobaneng", audioFileName: "Yimalini")
                            
                         ]),
    PhraseCategory(name: "Numbers", phrases: [
        Phrase(text: "One", translation: "Tee", audioFileName: "Kunye"),
        Phrase(text: "Two", translation: "Pedi", audioFileName: "Kubili"),
        Phrase(text: "Three", translation: "Tharo", audioFileName: "Kuthathu"),
        Phrase(text: "Four", translation: "Nne", audioFileName: "Kune"),
        Phrase(text: "Five", translation: "Hlanu", audioFileName: "Kuhlanu"),
        Phrase(text: "Six", translation: "Tšela", audioFileName: "Isithupha"),
        Phrase(text: "Seven", translation: "Šupa", audioFileName: "Isikhombisa"),
        Phrase(text: "Eight", translation: "Seswai", audioFileName: "Isitshiyangalombili"),
        Phrase(text: "Nine", translation: "Senyane", audioFileName: "Isitshiyangalolunye"),
        Phrase(text: "Ten", translation: "Lesome", audioFileName: "Itshumi"),
        Phrase(text: "Eleven", translation: "Lesome tee", audioFileName: "Isthumilakunye"),
        Phrase(text: "Twelve", translation: "Lesome pedi", audioFileName: "Itshumilambili"),
        Phrase(text: "Twenty", translation: "Masome pedi", audioFileName: "Amatshumi amabili"),
        Phrase(text: "Thirty", translation: "Masome tharo", audioFileName: "Amatshumi amathathu"),
        Phrase(text: "Forty", translation: "Masome nne", audioFileName: "Amatshumi amathathu"),
        Phrase(text: "Fifty", translation: "Masome hlanu", audioFileName: "Amatshumi amathathu"),
        Phrase(text: "Hundred", translation: "Lekgolo", audioFileName: "Amatshumi amathathu")
                            
                         ]),
    PhraseCategory(name: "Body Parts", phrases: [
                            
        Phrase(text: "Head", translation: "Hlogo", audioFileName: "Ikhanda"),
        Phrase(text: "Hair", translation: "Moriri", audioFileName: "Inwele"),
        Phrase(text: "Eyes", translation: "Mehlo", audioFileName: "Amehlo"),
        Phrase(text: "Nose", translation: "Nnko", audioFileName: "Amakhala"),
        Phrase(text: "Mouth", translation: "Molomo", audioFileName: "Umlomo"),
        Phrase(text: "Tongue", translation: "Leleme", audioFileName: "Umlomo"),
        Phrase(text: "Stomach", translation: "Mpa", audioFileName: "Isisu"),
        Phrase(text: "Chest", translation: "Sehuba", audioFileName: "Isifuba" ),
        Phrase(text: "Heart", translation: "Pelo", audioFileName: "Inhliziyo" ),
        Phrase(text: "Back", translation: "Mokokotlo", audioFileName: "Iqolo" ),
        Phrase(text: "Leg", translation: "Leoto", audioFileName: "Iqolo" ),
        Phrase(text: "Knee", translation: "Lengwele", audioFileName: "Iqolo" ),
        Phrase(text: "Brain", translation: "Bjoko", audioFileName: "Iqolo" ),
        Phrase(text: "Liver", translation: "Sebete", audioFileName: "Iqolo" ),
        Phrase(text: "Blood", translation: "Madi", audioFileName: "Iqolo" ),
        Phrase(text: "Face", translation: "Sefahlogo", audioFileName: "Iqolo" ),
        Phrase(text: "Forehead", translation: "Sephatla", audioFileName: "Iqolo" ),
        Phrase(text: "Cheek", translation: "Lerama", audioFileName: "Iqolo" ),
        Phrase(text: "Skin", translation: "Letlalo", audioFileName: "Isikhumba" )
                         ]),
PhraseCategory(name: "Animals", phrases: [
        Phrase(text: "Lion", translation: "Tau", audioFileName: "Isilwane"),
        Phrase(text: "Buffalo", translation: "Nare", audioFileName: "Inyathi"),
        Phrase(text: "Rhino", translation: "Tšhukudu", audioFileName: "Ubhejana"),
        Phrase(text: "Chicken", translation: "Kgogo", audioFileName: "Inkukhu"),
        Phrase(text: "Rabbit", translation: "Mmutla", audioFileName: "Umvundla"),
        Phrase(text: "Goat", translation: "Pudi", audioFileName: "Umbuzi"),
        Phrase(text: "Cow", translation: "Kgomu", audioFileName: "Inkomo"),
        Phrase(text: "Horse", translation: "Pere", audioFileName: "Ibhiza"),
        Phrase(text: "Bird", translation: "Nonyane", audioFileName: "Inyoni"),
        Phrase(text: "Hyena", translation: "Phiri", audioFileName: "Inyoni"),
        Phrase(text: "Baboon", translation: "Tshwene", audioFileName: "Inyoni"),
        Phrase(text: "Tortoise", translation: "Khudu", audioFileName: "Inyoni"),
        Phrase(text: "Pig", translation: "Kolobe", audioFileName: "Inyoni"),
        Phrase(text: "Mouse", translation: "Legotlo", audioFileName: "Inyoni"),
                         ]),
                         
    PhraseCategory(name: "Colors", phrases: [
            Phrase(text: "Colors", translation: "Mebala", audioFileName: "Mhlophe"),
            Phrase(text: "White", translation: "Šweu", audioFileName: "Mhlophe"),
            Phrase(text: "Black", translation: "Ntsho", audioFileName: "Mnyama"),
            Phrase(text: "Green", translation: "Talamorogo", audioFileName: "Luhlazs"),
            Phrase(text: "Orange", translation: "Namune", audioFileName: "Luhlazs"),
            Phrase(text: "Yellow", translation: "Selorwana", audioFileName: "Lithanga"),
            Phrase(text: "Red", translation: "Hubedu", audioFileName: "Kubomvu"),
            Phrase(text: "Blue", translation: "Talalerata", audioFileName: "Isibhakabhaka"),
            Phrase(text: "Purple", translation: "Perese", audioFileName: "Bubende"),
            Phrase(text: "Brown", translation: "Tsoto", audioFileName: "Nsundu"),
            Phrase(text: "Silver", translation: "Silifere", audioFileName: "Siliva"),
            Phrase(text: "Gold", translation: "Gauta", audioFileName: "Golide"),
            Phrase(text: "Grey", translation: "Pududu", audioFileName: "Ludaka")
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
                .navigationTitle({
                    switch language {
                    case .shona:
                        return "Shona"
                    case .ndebele:
                        return "Ndebele"
                    case .sepedi:
                        return "Sesotho"
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
