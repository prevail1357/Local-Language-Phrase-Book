//
//  Settings-Page.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 31/10/2025.
//

import SwiftUI

struct Settings_Page: View {
    
    @State var size: Double = 0
    @State var darkThemeIsOn: Bool = false
    var body: some View {
        NavigationStack{
            
                Form {
                    Section(header: Text("Display")){
                        Toggle(isOn: $darkThemeIsOn, label: {
                            Text("Dark theme")
                        })
                        VStack{
                            Text("Font Size")
                            Slider(value: $size, in: 1...10, step: 1.0)
                                Text("Size: \(Int(size))")
                            
                        }
                    }
                    
                }
                
                .navigationTitle("Settings")
            }
        }
    }


#Preview {
    Settings_Page()
}
