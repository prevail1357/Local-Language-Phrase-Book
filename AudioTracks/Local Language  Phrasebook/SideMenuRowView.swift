//
//  SideMenuRowView.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 27/10/2025.
//

import SwiftUI

struct SideMenuRowView: View {
    
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelected: Bool {
        return selectedOption == option
    }
    
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.large)
            
            Text(option.title)
                .font(.headline)
            
            Spacer()
               
        }
        .padding(.leading)
        .foregroundStyle(isSelected ? .green : .primary)
        .frame(width: 216, height: 44)
        .background(isSelected ? .green.opacity(0.20) : .clear )
       
    }
}

#Preview {
    SideMenuRowView(option: .favourites, selectedOption: .constant(.favourites))
}
