//
//  WelcomePage.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 16/10/2025.
//
import SwiftUI


struct WelcomePage: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(AngularGradient(gradient: Gradient(colors: [Color.green, Color.white]), center: .bottom, angle: .degrees(355)))
                .frame(width: 430, height: 990)
            VStack{
                Text("Welcome to ZimPhrase")
                    .font(.headline)
                    .padding()
                
                Image("ZimPhrase4")
                    .resizable()
                    .cornerRadius(80)
                    .scaledToFit()
                    .frame(width: 270, height: 400)
                   
                
                Text("Your guide to the languages and spirit of Zimbabwe. Speak like a local and experience true Ubuntu.")
                    .multilineTextAlignment(.center)
                    .padding(40)
        
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.green)
                        .frame(width: 260, height: 60)
                    NavigationLink("Continue"){}
                        .foregroundColor(.black)
                }
            
            }
        }
        
    }
    
}

#Preview {
    WelcomePage()
}
