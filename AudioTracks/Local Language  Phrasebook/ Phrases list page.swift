//
//  Ndebele phrases list page.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 16/10/2025.
//

import SwiftUI
import AVFoundation


struct PhraseListView: View {
    let category: PhraseCategory
    @State private var audioTranslation: AVAudioPlayer?
    
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
                        
                        Spacer()
                        
                        ShareLink(item: "\(phrase)"){
                            Image(systemName: "square.and.arrow.up")
                                .imageScale(.large)
                        }
//                            

                        Button( action: {
                            playAudio(fileName: phrase.audioFileName)
                        }){
                            Image(systemName: "speaker.wave.2.fill")
                                .foregroundColor(.green)
                                .font(.title3)
                        }
                    }
                    
                    .buttonStyle(BorderlessButtonStyle())
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.green)
                        .opacity(0.5)
                        .frame(width: 490, height: 10)
                    
                }
               
            }
        }
        .navigationTitle(category.name)
        
        
    }
    func playAudio(fileName: String){
        if let url = Bundle.main.url(forResource: fileName, withExtension: ".mp3"){
            do {
                audioTranslation = try AVAudioPlayer(contentsOf: url)
                audioTranslation?.prepareToPlay()
                audioTranslation?.play()
            }catch{
                print("Error playing \(error.localizedDescription)")
            }
        }
    }
}



#Preview {
NavigationView {
    LanguageCategoryPage(language: .ndebele)
}
}
