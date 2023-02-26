//
//  FruitNutrientView.swift
//  FruitApp
//
//  Created by Macbook Pro on 26/02/2023.
//

import SwiftUI

struct FruitNutrientView: View {
    
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Proterin", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }// groupbox
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 418))
            .padding()
    }
}
