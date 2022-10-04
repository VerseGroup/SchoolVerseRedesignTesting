//
//  MenuRepository.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/30/22.
//

import Foundation
import SwiftUI

class MenuRepository: ObservableObject {
    
    var breakfast: BreakfastData = BreakfastData()
    var lunch: LunchData = LunchData()
    var dinner: DinnerData = DinnerData()
    
    var menuNow: SVMenu = SVMenu(date: Date.now,
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
            ], lunch: [
                Food(
                    name: "Grilled Buffalo Chicken", course: .entree,
                    nutrition:
                        Nutrition(
                            calories: 468,
                            gramsCarbs: 40.5,
                            gramsFat: 28.9,
                            gramsProtein: 11.2,
                            gramsSugar: 10.5,
                            mgSodium: 449.9),
                    servingSize:
                        ServingSize(
                            servingSizeAmount: "1",
                            servingSizeUnit: "oz")),
                Food(
                    name: "Grilled Chicken", course: .entree,
                    nutrition:
                        Nutrition(
                            calories: 471,
                            gramsCarbs: 45.1,
                            gramsFat: 25,
                            gramsProtein: 16,
                            gramsSugar: 6.7,
                            mgSodium: 663.3),
                    servingSize:
                        ServingSize(
                            servingSizeAmount: "4",
                            servingSizeUnit: "oz"))
            ], dinner: [
                Food(name: "Turkey Chili", course: .entree,
                     nutrition:
                        Nutrition(
                            calories: 185,
                            gramsCarbs: 18.8,
                            gramsFat: 6.1,
                            gramsProtein: 16.4,
                            gramsSugar: 0.8,
                            mgSodium: 450),
                     servingSize:
                        ServingSize(
                            servingSizeAmount: "2",
                            servingSizeUnit: "cups")),
                Food(name: "Tex Mex Tofu Chili", course: .entree,
                     nutrition:
                        Nutrition(
                            calories: 182,
                            gramsCarbs: 19.5,
                            gramsFat: 4.6,
                            gramsProtein: 17.3,
                            gramsSugar: 4.8,
                            mgSodium: 685),
                     servingSize:
                        ServingSize(
                            servingSizeAmount: "1",
                            servingSizeUnit: "cup")),
                Food(name: "Roasted Vegetables", course: .side,
                     nutrition:
                        Nutrition(
                            calories: 80,
                            gramsCarbs: 7,
                            gramsFat: 6,
                            gramsProtein: 1,
                            gramsSugar: 4,
                            mgSodium: 0),
                     servingSize:
                        ServingSize(
                            servingSizeAmount: "4",
                            servingSizeUnit: "oz")),
                Food(name: "Jalapeno Cheddar Cornbread", course: .side,
                     nutrition:
                        Nutrition(
                            calories: 320,
                            gramsCarbs: 39,
                            gramsFat: 15,
                            gramsProtein: 6,
                            gramsSugar: 16,
                            mgSodium: 340),
                     servingSize:
                        ServingSize(
                            servingSizeAmount: "3.5",
                            servingSizeUnit: "oz")),
                Food(name: "Sugar Cookies", course: .dessert,
                     nutrition:
                        Nutrition(
                            calories: 100,
                            gramsCarbs: 16,
                            gramsFat: 4,
                            gramsProtein: 1,
                            gramsSugar: 6,
                            mgSodium: 80),
                     servingSize:
                        ServingSize(
                            servingSizeAmount: "1",
                            servingSizeUnit: "cookie"))
            ])
}
