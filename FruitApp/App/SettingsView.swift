//
//  SettingsView.swift
//  FruitApp
//
//  Created by Macbook Pro on 26/02/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // section 1
                    
                    GroupBox(
                        label:
                            SettingLabelView(labelText: "Fruit", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most of fruits are naturally low in fat, sodium, and calories. None have cholesterol, and much more")
                                .font(.footnote)
                        }
                    }
                    
                    // section 2
                    
                    // section 3
                }// vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }// scroll
        }// navgation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
