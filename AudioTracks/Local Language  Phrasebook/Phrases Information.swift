//
//  Phrases Information.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 30/10/2025.
//

import Foundation

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

struct PhraseData {
    static func categories(for language: Language) -> [PhraseCategory]{
        switch language {
        case .shona:
            return shonaCategories
        case .ndebele:
            return ndebeleCategories
        case .sepedi:
            return sepediCategories
        }
    }
}



let shonaCategories: [PhraseCategory] = [ PhraseCategory( name: "Greetings", phrases:[
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
        
        
        
        
        
        
        
        
    
let ndebeleCategories: [PhraseCategory] = [ PhraseCategory( name: "Greetings", phrases:
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
        
        
        
        
        
        
        
        

let sepediCategories: [PhraseCategory] = [
PhraseCategory( name: "Greetings", phrases:
                [
    Phrase( text: "Hello", translation: "Dumela", audioFileName: "Dumela"),
    Phrase( text: "Good Morning", translation: "Otsogile bjang?", audioFileName: "OtsogileBjang"),
    Phrase( text: "Good Afternoon", translation: "Le hlwile bjang", audioFileName: "Lehlwile bjang"),
    Phrase( text: "Good Afternoon, how about you", translation: "Re hlwile gabotse, re botsisa lena", audioFileName: "Rehlwile gabotse"),
    Phrase( text: "Good Evening", translation: "Dumelang?", audioFileName: "Dumelang"),
    Phrase(text: "Good Night", translation: "Urobale gabotse", audioFileName: "Urobale gabotse"),
    Phrase(text: "How are you?", translation: "O bjang?", audioFileName: "Objang"),
    Phrase(text: "I'm fine, how are you?", translation: "Ke gona, o bjang?", audioFileName: "Kegona objang"),
    Phrase(text: "What is your name?", translation: "Lebitso lagago ke mang?", audioFileName: "Lebitso lagago kemang"),
    Phrase(text: "See you tommorrow", translation: "Ke tla go bona kamtswana", audioFileName: "Ketlagobona kamtswana"),
    Phrase(text: "Where are you from?", translation: "Otšwa kae?", audioFileName: "Otlwa kar")
                                        ]),
PhraseCategory(name: "Emergency", phrases: [
    Phrase(text: "Help!", translation: "Thušo", audioFileName: "Thuso"),
    Phrase(text: "Fire!", translation: "Mollo!", audioFileName: "Mollo"),
    Phrase(text: "Thief!", translation: "Lehodu!", audioFileName: "Lehodu"),
    Phrase(text: "Stop!", translation: "Yema!", audioFileName: "Yema"),
    Phrase(text: "Watch out!", translation: "Hlokomela!", audioFileName: "Hlokomela"),
    Phrase(text: "Are you okay?", translation: "O sharp?", audioFileName: "O sharp"),
    Phrase(text: "I'm okay", translation: "Kelokile", audioFileName: "Kelokile"),
    Phrase(text: "Call an ambulance!", translation: "Bitsa ambulense!", audioFileName: "Bitsa ambulense" )
                     ]),


PhraseCategory(name: "Common", phrases: [
    Phrase(text: "Yes", translation: "Ee", audioFileName: "Ee"),
    Phrase(text: "No", translation: "Aowa", audioFileName: "Aowa"),
    Phrase(text: "Please", translation: "Kyagopela", audioFileName: "Kyagopela"),
    Phrase(text: "Thank you", translation: "Kea leboga", audioFileName: "Kea leboga"),
    Phrase(text: "Excuse me", translation: "Tshwarelo", audioFileName: "Tshwarelo"),
    Phrase(text: "You're welcome", translation: "Le amogetšwe", audioFileName: "Leamogetswe"),
    Phrase(text: "Pardon", translation: "Tshawrelo", audioFileName: "Tshwarelo"),
    Phrase(text: "Just a moment", translation: "Motsotswana feela", audioFileName: "Motsotswana fela"),
    Phrase(text: "I don't know", translation: "Aketsebe", audioFileName: "Aketsebe"),
    Phrase(text: "I speak english", translation: "Ke bolela sekgowa", audioFileName: "Kebolela segoa"),
    Phrase(text: "I'm learning Sepedi", translation: "Ke ithuta Sepedi", audioFileName: "Ke ithuta sepedi"),
    Phrase(text: "Again", translation: "Gape", audioFileName: "Gape"),
                     ]),
            


PhraseCategory(name: "Questions", phrases: [
    Phrase(text: "Questions", translation: "Diputśišo", audioFileName: "Diputsiso"),
    Phrase(text: "What?", translation: "Eng?", audioFileName: "Eng"),
    Phrase(text: "How?", translation: "Bjang?", audioFileName: "Bjang"),
    Phrase(text: "Which?", translation: "Sefe?", audioFileName: "Sefe"),
    Phrase(text: "When?", translation: "Neng?", audioFileName: "Neng"),
    Phrase(text: "Where?", translation: "Kae?", audioFileName: "Kae"),
    Phrase(text: "Why?", translation: "Goreng?", audioFileName: "Goreng"),
    Phrase(text: "Who?", translation: "Mang?", audioFileName: "Mang"),
    Phrase(text: "How many?", translation: "Di kae?", audioFileName: "Di kae"),
    Phrase(text: "Because", translation: "Gobaneng", audioFileName: "Gobaneng")
                        
                     ]),
PhraseCategory(name: "Numbers", phrases: [
    Phrase(text: "One", translation: "Tee", audioFileName: "Tee"),
    Phrase(text: "Two", translation: "Pedi", audioFileName: "Pedi"),
    Phrase(text: "Three", translation: "Tharo", audioFileName: "Tharo"),
    Phrase(text: "Four", translation: "Nne", audioFileName: "Nne"),
    Phrase(text: "Five", translation: "Hlanu", audioFileName: "Hlanu"),
    Phrase(text: "Six", translation: "Tšela", audioFileName: "Tsela"),
    Phrase(text: "Seven", translation: "Šupa", audioFileName: "Supa"),
    Phrase(text: "Eight", translation: "Seswai", audioFileName: "Seswai"),
    Phrase(text: "Nine", translation: "Senyane", audioFileName: "Senyane"),
    Phrase(text: "Ten", translation: "Lesome", audioFileName: "Lesome"),
    Phrase(text: "Eleven", translation: "Lesome tee", audioFileName: "Lesome tee"),
    Phrase(text: "Twelve", translation: "Lesome pedi", audioFileName: "Lesome pedi"),
    Phrase(text: "Twenty", translation: "Masome pedi", audioFileName: "Masome pedi"),
    Phrase(text: "Thirty", translation: "Masome tharo", audioFileName: "Masome tharo"),
    Phrase(text: "Forty", translation: "Masome nne", audioFileName: "Masome mne"),
    Phrase(text: "Fifty", translation: "Masome hlanu", audioFileName: "Masome hlanu"),
    Phrase(text: "Hundred", translation: "Lekgolo", audioFileName: "Lekgolo")
                        
                     ]),
PhraseCategory(name: "Body Parts", phrases: [
                        
    Phrase(text: "Head", translation: "Hlogo", audioFileName: "Hlogo"),
    Phrase(text: "Hair", translation: "Moriri", audioFileName: "Moriri"),
    Phrase(text: "Eyes", translation: "Mehlo", audioFileName: "Mehlo"),
    Phrase(text: "Nose", translation: "Nnko", audioFileName: "Nnko"),
    Phrase(text: "Mouth", translation: "Molomo", audioFileName: "Molomo"),
    Phrase(text: "Tongue", translation: "Leleme", audioFileName: "Leleme"),
    Phrase(text: "Stomach", translation: "Mpa", audioFileName: "Mpa"),
    Phrase(text: "Chest", translation: "Sehuba", audioFileName: "Sehuba" ),
    Phrase(text: "Heart", translation: "Pelo", audioFileName: "Pelo" ),
    Phrase(text: "Back", translation: "Mokokotlo", audioFileName: "Mokokotlo" ),
    Phrase(text: "Leg", translation: "Leoto", audioFileName: "Leoto" ),
    Phrase(text: "Knee", translation: "Lengwele", audioFileName: "Lengwele" ),
    Phrase(text: "Brain", translation: "Bjoko", audioFileName: "Bjoko" ),
    Phrase(text: "Liver", translation: "Sebete", audioFileName: "Sebete" ),
    Phrase(text: "Blood", translation: "Madi", audioFileName: "Madi" ),
    Phrase(text: "Face", translation: "Sefahlogo", audioFileName: "Sefahlogo" ),
    Phrase(text: "Forehead", translation: "Sephatla", audioFileName: "Sephatla" ),
    Phrase(text: "Cheek", translation: "Lerama", audioFileName: "Lerama" ),
    Phrase(text: "Skin", translation: "Letlalo", audioFileName: "Letlalo" )
                     ]),
PhraseCategory(name: "Animals", phrases: [
    Phrase(text: "Lion", translation: "Tau", audioFileName: "Tau"),
    Phrase(text: "Buffalo", translation: "Nare", audioFileName: "Nar3"),
    Phrase(text: "Rhino", translation: "Tšhukudu", audioFileName: "Tshukudu"),
    Phrase(text: "Chicken", translation: "Kgogo", audioFileName: "Kgogo"),
    Phrase(text: "Rabbit", translation: "Mmutla", audioFileName: "Mmutla"),
    Phrase(text: "Goat", translation: "Pudi", audioFileName: "Pudi"),
    Phrase(text: "Cow", translation: "Kgomu", audioFileName: "Kgomu"),
    Phrase(text: "Horse", translation: "Pere", audioFileName: "Pere"),
    Phrase(text: "Bird", translation: "Nonyane", audioFileName: "Nonyane"),
    Phrase(text: "Hyena", translation: "Phiri", audioFileName: "Phiri"),
    Phrase(text: "Baboon", translation: "Tshwene", audioFileName: "Tshwene"),
    Phrase(text: "Tortoise", translation: "Khudu", audioFileName: "Khudu"),
    Phrase(text: "Pig", translation: "Kolobe", audioFileName: "Kolobe"),
    Phrase(text: "Mouse", translation: "Legotlo", audioFileName: "Legotlo"),
                     ]),
                     
PhraseCategory(name: "Colors", phrases: [
        Phrase(text: "Colors", translation: "Mebala", audioFileName: "Mebala"),
        Phrase(text: "White", translation: "Šweu", audioFileName: "Sweu"),
        Phrase(text: "Black", translation: "Ntsho", audioFileName: "Ntsho"),
        Phrase(text: "Green", translation: "Talamorogo", audioFileName: "Talamorogo"),
        Phrase(text: "Orange", translation: "Namune", audioFileName: "Namena"),
        Phrase(text: "Yellow", translation: "Selorwana", audioFileName: "Selorwana"),
        Phrase(text: "Red", translation: "Hubedu", audioFileName: "Hubedu"),
        Phrase(text: "Blue", translation: "Talalerata", audioFileName: "Talalerata"),
        Phrase(text: "Purple", translation: "Perese", audioFileName: "Perese"),
        Phrase(text: "Brown", translation: "Tsoto", audioFileName: "Tsoto"),
        Phrase(text: "Silver", translation: "Silifere", audioFileName: "Silifere"),
        Phrase(text: "Gold", translation: "Gauta", audioFileName: "Gauta"),
        Phrase(text: "Grey", translation: "Pududu", audioFileName: "Pududu")
                     ]),
        ]
    
    


