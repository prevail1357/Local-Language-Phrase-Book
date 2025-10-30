//
//  SideMenuView.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 27/10/2025.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @State private var selectedOption: SideMenuOptionModel?
    
    var body: some View {
        ZStack{
            if isShowing{
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack{
                    VStack(alignment: .leading, spacing: 30 ){
                        SideViewHeader()
                        VStack{
                            ForEach(SideMenuOptionModel.allCases){option in Button(action: {selectedOption = option}, label: {SideMenuRowView(option: option, selectedOption: $selectedOption)})
                                
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .background(.white)
                    .frame(width: 260, alignment: .leading)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true))
}
