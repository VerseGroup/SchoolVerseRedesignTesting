//
//  DayMenuView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/2/22.
//

import SwiftUI

struct DayMenuView: View {
    @State var menu: SVMenu
    @State var mealType: String
    
    var body: some View {
        switchMeal
    }
    
    
}

extension DayMenuView {
    @ViewBuilder var switchMeal: some View {
        switch mealType{
        case "Breakfast":
            breakfastMenu
        case "Lunch":
            lunchMenu
        case "Dinner":
            dinnerMenu
        default:
            lunchMenu
        }
    }
    
    var breakfastMenu: some View {
        VStack {
            if let breakfast = menu.breakfast {
                HeaderLabel(name: "\(mealType) Buffet")
                    .padding(5)
                
                ForEach(breakfast) { food in
                    MenuItemView(food: food)
                }
                
                Spacer()
                    .frame(height: 75)
            } else {
                Spacer()
                    .frame(height: 30)
                
                Text("No \(mealType) for Today!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
            }
        }
    }
    
    var lunchMenu: some View {
        VStack {
            if let lunch = menu.lunch {
                HeaderLabel(name: "\(mealType) Buffet")
                    .padding(5)
                
                ForEach(lunch) { food in
                    MenuItemView(food: food)
                }
                
                Spacer()
                    .frame(height: 75)
            } else {
                Spacer()
                    .frame(height: 30)
                
                Text("No \(mealType) for Today!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
            }
        }
    }
    
    var dinnerMenu: some View {
        VStack {
            if let dinner = menu.dinner {
                HeaderLabel(name: "\(mealType) Buffet")
                    .padding(5)
                
                ForEach(dinner) { food in
                    MenuItemView(food: food)
                }
                
                Spacer()
                    .frame(height: 75)
            } else {
                Spacer()
                    .frame(height: 30)
                
                Text("No \(mealType) for Today!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
            }
        }
    }
}

struct DayMenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                ColorfulBackgroundView()
                
                Color.clear.heavyGlass().ignoresSafeArea()
                
                DayMenuView(
                    menu:
                        SVMenu(date: Date(),
                               breakfast: [
                                Food(
                                    name: "Blueberry Pancakes", course: .entree,
                                    nutrition:
                                        Nutrition(
                                            calories: 400,
                                            gramsCarbs: 72.7,
                                            gramsFat: 8.7,
                                            gramsProtein: 10,
                                            gramsSugar: 22.7,
                                            mgSodium: 1040),
                                    servingSize:
                                        ServingSize(
                                            servingSizeAmount: "1",
                                            servingSizeUnit: "pancake")),
                                Food(
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
                                            servingSizeUnit: "cup")),
                                Food(
                                    name: "Fried Eggs", course: .entree,
                                    nutrition:
                                        Nutrition(
                                            calories: 86,
                                            gramsCarbs: 0.5,
                                            gramsFat: 6.7,
                                            gramsProtein: 5.5,
                                            gramsSugar: 0.2,
                                            mgSodium: 123),
                                    servingSize:
                                        ServingSize(
                                            servingSizeAmount: "1",
                                            servingSizeUnit: "egg")),
                                Food(
                                    name: "Sausage Links", course: .side,
                                    nutrition:
                                        Nutrition(
                                            calories: 180,
                                            gramsCarbs: 2,
                                            gramsFat: 16,
                                            gramsProtein: 7,
                                            gramsSugar: 1,
                                            mgSodium: 410),
                                    servingSize:
                                        ServingSize(
                                            servingSizeAmount: "3",
                                            servingSizeUnit: "links"))
                                
                               ]),
                    mealType: "Breakfast")
            } //: ZStack
            
            
        } //: Group
    } //: previews
} //: Preview Provider
