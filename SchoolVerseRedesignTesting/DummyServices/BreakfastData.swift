//
//  BreakfastData.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/31/22.
//

import Foundation

class BreakfastData {
    
    // Breakdast Foods
    var scrambledEggs: Food =
    Food(
        name: "Scrambled Eggs", course: .entree,
        nutrition:
            Nutrition(
                calories: 328,
                gramsCarbs: 3.5,
                gramsFat: 24.2,
                gramsProtein: 22,
                gramsSugar: 3.1,
                mgSodium: 319),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))
    
    var friedEggs: Food =
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
                servingSizeUnit: "egg"))
    
    var quiche: Food =
    Food(
        name: "Quiche", course: .entree,
        nutrition:
            Nutrition(
                calories: 309,
                gramsCarbs: 4.8,
                gramsFat: 23.7,
                gramsProtein: 20.4,
                gramsSugar: 0,
                mgSodium: 546),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "slice"))
    
    var frenchToast: Food =
    Food(
        name: "French Toast", course: .entree,
        nutrition:
            Nutrition(
                calories: 162,
                gramsCarbs: 14.3,
                gramsFat: 5,
                gramsProtein: 15,
                gramsSugar: 0,
                mgSodium: 33.3),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "slice"))
    
    var blueberryPancakes: Food =
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
                servingSizeUnit: "pancake"))
    
    var chocolatePancakes: Food =
    Food(
        name: "Chocolate Pancakes", course: .entree,
        nutrition:
            Nutrition(
                calories: 114,
                gramsCarbs: 22.1,
                gramsFat: 1.4,
                gramsProtein: 4,
                gramsSugar: 7.2),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "pancake"))
    
    var bananaPancakes: Food =
    Food(
        name: "Banana Pancakes", course: .entree,
        nutrition:
            Nutrition(
                calories: 105,
                gramsCarbs: 13,
                gramsFat: 3.3,
                gramsProtein: 6.7,
                gramsSugar: 3.3,
                mgSodium: 140.7),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "pancake"))
    
    var hashBrowns: Food =
    Food(
        name: "Hash Browns", course: .entree,
        nutrition:
            Nutrition(
                calories: 140,
                gramsCarbs: 15,
                gramsFat: 8,
                gramsProtein: 2,
                gramsSugar: 1,
                mgSodium: 270),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "patty"))
    
    var homestylePotatoes: Food =
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
                servingSizeUnit: "cup"))
    
    var taterTots: Food =
    Food(
        name: "Tater Tots", course: .entree,
        nutrition:
            Nutrition(
                calories: 160,
                gramsCarbs: 20,
                gramsFat: 8,
                gramsProtein: 2,
                gramsSugar: 1,
                mgSodium: 440),
        servingSize:
            ServingSize(
                servingSizeAmount: "9",
                servingSizeUnit: "tater tots"))
    
    var bacon: Food =
    Food(
        name: "Bacon", course: .side,
        nutrition:
            Nutrition(
                calories: 82,
                gramsCarbs: 0.2,
                gramsFat: 6.2,
                gramsProtein: 6,
                gramsSugar: 0.1,
                mgSodium: 376),
        servingSize:
            ServingSize(
                servingSizeAmount: "2",
                servingSizeUnit: "slices"))
    
    var canadianBacon: Food =
    Food(
        name: "Canadian Bacon", course: .side,
        nutrition:
            Nutrition(
                calories: 70,
                gramsCarbs: 1,
                gramsFat: 2.5,
                gramsProtein: 11,
                gramsSugar: 1,
                mgSodium: 430),
        servingSize:
            ServingSize(
                servingSizeAmount: "2",
                servingSizeUnit: "slices"))

    var sausageLinks: Food =
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

    var eggAndCheeseRoll: Food =
    Food(
        name: "Egg and Cheese on a Roll", course: .entree,
        nutrition:
            Nutrition(
                calories: 270,
                gramsCarbs: 35,
                gramsFat: 9,
                gramsProtein: 16,
                gramsSugar: 2,
                mgSodium: 670),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "sandwich"))

    var blueberryScones: Food =
    Food(
        name: "Blueberry Scones", course: .entree,
        nutrition:
            Nutrition(
                calories: 77,
                gramsCarbs: 10.7,
                gramsFat: 3.3,
                gramsProtein: 1,
                gramsSugar: 5,
                mgSodium: 76.7),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "scone"))

    var raspberryScones: Food =
    Food(
        name: "Raspberry Scones", course: .entree,
        nutrition:
            Nutrition(
                calories: 143,
                gramsCarbs: 16,
                gramsFat: 9,
                gramsProtein: 0.6,
                gramsSugar: 11,
                mgSodium: 329),
        servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "scone"))
    
    var mapleSyrup: Food =
    Food(
        name: "Maple Syrup", course: .entree,
        nutrition:
            Nutrition(
                calories: 100,
                gramsCarbs: 25,
                gramsFat: 0,
                gramsProtein: 0,
                gramsSugar: 15,
                mgSodium: 30),
        servingSize:
            ServingSize(
                servingSizeAmount: "2",
                servingSizeUnit: "tablespoons"))
}
