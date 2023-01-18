//
//  OnBoardingView.swift
//  FruitApp
//
//  Created by Macbook Pro on 18/01/2023.
//

import SwiftUI

struct OnBoardingView: View {
    // properties
    
    // body
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                FruitCardView()
            }
        } // tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
    
    
}
// preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
