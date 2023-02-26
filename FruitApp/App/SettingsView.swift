//
//  SettingsView.swift
//  FruitApp
//
//  Created by Macbook Pro on 26/02/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts onboarding process and you will see welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // section 3
                    
                    GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingRowView(name: "Developer", content: "Bob")
                        SettingRowView(name: "Developer", content: "Bob")
                        SettingRowView(name: "Developer", content: "Bob")
                    }
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
