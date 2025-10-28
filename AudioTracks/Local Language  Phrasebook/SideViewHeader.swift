//
//  SideViewHeader.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 27/10/2025.
//

import SwiftUI

struct SideViewHeader: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 240, height: 150)
                .foregroundStyle(Color.green)
            VStack{
                Image("ZimPhrase4")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(80)
                    .frame(width: 100)
                
                Text("ZimPhrase")
                    .font(.title.bold())
            }
        }
    }
}

#Preview {
    SideViewHeader()
}
