//
//  MenuItemView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/2/22.
//

import SwiftUI

struct MenuItemView: View {
    @State var food: Food
    
    var body: some View {
        DisclosureGroup {
            VStack(spacing: 10) {
                servingSize
                
                nutritionInfo
            }
            .padding(5)
        } label: {
            HeaderLabel(name: food.name)
        }
        .foregroundColor(Color.white)
        .tint(Color.white)
        .padding(.horizontal)
        .padding(.vertical, 8)
        .taintedGlass()
        .padding()
        
        
    }
}

extension MenuItemView {
    var servingSize: some View {
        HStack { // Serving Size
            Text("Serving Size")
                .fontWeight(.bold)
            
            Spacer()
            
            Text("\(food.servingSize.servingSizeAmount!)" + "  \(food.servingSize.servingSizeUnit!)")
                .fontWeight(.semibold)
                .padding(.trailing, 7)
            
        }
        .padding(.horizontal, 5)
    }
    
    var nutritionInfo: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Nutrition Info")
                .fontWeight(.bold)
            
            HStack {
                Text("Calories")
                
                Spacer()
                
                Text("\(food.nutrition.calories?.formatted() ?? "N/A") cal")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 7)
            
            HStack {
                Text("Total Fat")
                
                Spacer()
                
                Text("\(food.nutrition.gramsFat?.formatted() ?? "N/A") g")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 7)
            
            HStack {
                Text("Total Carbs")
                
                Spacer()
                
                Text("\(food.nutrition.gramsCarbs?.formatted() ?? "N/A") g")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 7)
            
            HStack {
                Text("Protein")
                
                Spacer()
                
                Text("\(food.nutrition.gramsProtein?.formatted() ?? "N/A") g")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 7)
            
            HStack {
                Text("Sugar")

                Spacer()

                Text("\(food.nutrition.gramsSugar?.formatted() ?? "N/A") g")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 7)
            
            HStack {
                Text("Sodium")

                Spacer()

                Text("\(food.nutrition.mgSodium?.formatted() ?? "N/A") mg")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 7)
        }
        .padding(.horizontal, 5)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            MenuItemView(food: Food(
                name: "Homestyle Breakfast Potatoes", course: .entree,
                nutrition:
                    Nutrition(
                        calories: 157,
                        gramsCarbs: 30,
                        gramsFat: 2.5,
                        gramsProtein: 4.6,
                        mgSodium: 421),
                servingSize:
                    ServingSize(
                        servingSizeAmount: "1",
                        servingSizeUnit: "cup"))
            )
        }
    }
}
