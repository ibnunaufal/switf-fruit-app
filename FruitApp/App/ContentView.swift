//
//  ContentView.swift
//  FruitApp
//
//  Created by Macbook Pro on 18/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSetting: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView(){
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)){
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSetting){
                        SettingsView()
                    }
            )
        }
        //        VStack {
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundColor(.accentColor)
        //            Text("Hello, world!")
        //        }
        //        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
