//
//  LunchData.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/31/22.
//

import Foundation

class LunchData {
    
    // Lunch Foods
    var buffaloChicken: Food =
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
                servingSizeUnit: "oz"))
    
    var grilledChicken: Food =
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
    
    
    var chickenNoodle: Food =
    Food(
        name: "Chicken Noodle Soup", course: .soup,
        nutrition:
            Nutrition(
                calories: 113,
                gramsCarbs: 13.8,
                gramsFat: 2,
                gramsProtein: 9.9,
                gramsSugar: 1.4,
                mgSodium: 156.8),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))
}
