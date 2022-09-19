//
//  DinnerData.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/31/22.
//

import Foundation

class DinnerData {
    
    // Dinner Foods
    var turkeyChili: Food =
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
                servingSizeUnit: "cups"))
    
    var texMexChili: Food =
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
                servingSizeUnit: "cup"))

    var roastedVegetables: Food =
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
                servingSizeUnit: "oz"))
    
    var cornbread: Food =
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
                servingSizeUnit: "oz"))


    var sugarCookies: Food =
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

    var roastPork: Food =
    Food(name: "", course: .entree,
         nutrition:
            Nutrition(
                calories: 284,
                gramsCarbs: 10.9,
                gramsFat: 14,
                gramsProtein: 27.6,
                gramsSugar: 9.5,
                mgSodium: 629.1),
         servingSize:
            ServingSize(
                servingSizeAmount: "4",
                servingSizeUnit: "oz"))

    var veggieStew: Food =
    Food(name: "Carribbean Vegetable Stew", course: .entree,
         nutrition:
            Nutrition(
                calories: 504,
                gramsCarbs: 53.9,
                gramsFat: 11.6,
                gramsProtein: 43.9,
                gramsSugar: 5.5,
                mgSodium: 1237.3),
         servingSize:
            ServingSize(
                servingSizeAmount: "120",
                servingSizeUnit: "mL"))

    var collardGreens: Food =
    Food(name: "Spicy Collard Greens", course: .side,
         nutrition:
            Nutrition(
                calories: 106,
                gramsCarbs: 12.9,
                gramsFat: 5.5,
                gramsProtein: 3.7,
                gramsSugar: 3.8,
                mgSodium: 229.9),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))

    var blackBeans: Food =
    Food(name: "Cuban Black Beans", course: .side,
         nutrition:
            Nutrition(
                calories: 127,
                gramsCarbs: 19,
                gramsFat: 3.2,
                gramsProtein: 6.7,
                gramsSugar: 1.2,
                mgSodium: 190.5),
         servingSize:
            ServingSize(
                servingSizeAmount: "0.5",
                servingSizeUnit: "cups"))

    var chocolateCake: Food =
    Food(name: "Chocolate Cake", course: .dessert,
         nutrition:
            Nutrition(
                calories: 191,
                gramsCarbs: 34.2,
                gramsFat: 5,
                gramsProtein: 3.2,
                gramsSugar: 18.1,
                mgSodium: 393.1),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "piece"))

    var beefShepherdsPie: Food =
    Food(name: "Beef Shepherd's Pie", course: .entree,
         nutrition:
            Nutrition(
                calories: 280,
                gramsCarbs: 26,
                gramsFat: 12.6,
                gramsProtein: 15.5,
                gramsSugar: 3.9,
                mgSodium: 586.3),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))

    var vegetarianShepherdsPie: Food =
    Food(name: "Vegetarian Shepherd's Pie", course: .entree,
         nutrition:
            Nutrition(
                calories: 184,
                gramsCarbs: 28.8,
                gramsFat: 6.4,
                gramsProtein: 4.7,
                gramsSugar: 5.1,
                mgSodium: 269.8),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))

    var sauteedSpinach: Food =
    Food(name: "Sauteed Spinach", course: .side,
         nutrition:
            Nutrition(
                calories: 45,
                gramsCarbs: 4,
                gramsFat: 2.5,
                gramsProtein: 3,
                gramsSugar: 0,
                mgSodium: 200),
         servingSize:
            ServingSize(
                servingSizeAmount: "4",
                servingSizeUnit: "oz"))

    var chocChipCookies: Food =
    Food(name: "Chocolate Chip Cookies", course: .dessert,
         nutrition:
            Nutrition(
                calories: 140,
                gramsCarbs: 4,
                gramsFat: 12,
                gramsProtein: 2,
                gramsSugar: 7,
                mgSodium: 220),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "Cookie"))

    var pestoChicken: Food =
    Food(name: "Grilled Pesto Chicken Breast", course: .entree,
         nutrition:
            Nutrition(
                calories: 247,
                gramsCarbs: 1.3,
                gramsFat: 14.1,
                gramsProtein: 27.8,
                gramsSugar: 0,
                mgSodium: 245.5),
         servingSize:
            ServingSize(
                servingSizeAmount: "3",
                servingSizeUnit: "oz"))

    var linguine: Food =
    Food(name: "Linguine", course: .entree,
         nutrition:
            Nutrition(
                calories: 200,
                gramsCarbs: 42,
                gramsFat: 1,
                gramsProtein: 7,
                gramsSugar: 2,
                mgSodium: 0),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))

    var quinoaPeppers: Food =
    Food(name: "Quinoa Stuffed Bell Peppers", course: .side,
         nutrition:
            Nutrition(
                calories: 233,
                gramsCarbs: 37.7,
                gramsFat: 6.2,
                gramsProtein: 8.2,
                gramsSugar: 7.7,
                mgSodium: 399.5),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "pepper"))

    var broccoli: Food =
    Food(name: "Steamed Broccoli", course: .side,
         nutrition:
            Nutrition(
                calories: 50,
                gramsCarbs: 11,
                gramsFat: 0.5,
                gramsProtein: 0),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))

    var friedChicken: Food =
    Food(name: "Fried Chicken", course: .entree,
         nutrition:
            Nutrition(
                calories: 568,
                gramsCarbs: 62,
                gramsFat: 19.5,
                gramsProtein: 32.5,
                gramsSugar: 7.3,
                mgSodium: 964.1),
         servingSize:
            ServingSize(
                servingSizeAmount: "2",
                servingSizeUnit: "pieces"))

    var macNCheese: Food =
    Food(name: "Creamy Baked Macaroni and Cheese", course: .entree,
         nutrition:
            Nutrition(
                calories: 289,
                gramsCarbs: 21.6,
                gramsFat: 17.6,
                gramsProtein: 11.3,
                gramsSugar: 4.7,
                mgSodium: 591.4),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "cup"))

    var fishTacos: Food =
    Food(name: "Crispy Fish Tacos", course: .entree,
         nutrition:
            Nutrition(
                calories: 309,
                gramsCarbs: 3.5,
                gramsFat: 17.9,
                gramsProtein: 31.8,
                gramsSugar: 2.6,
                mgSodium: 452.6),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "taco"))

    var rice: Food =
    Food(name: "Wild Rice", course: .entree,
         nutrition:
            Nutrition(
                calories: 378,
                gramsCarbs: 51.5,
                gramsFat: 13.5,
                gramsProtein: 13.5,
                gramsSugar: 5.3,
                mgSodium: 576.2),
         servingSize:
            ServingSize(
                servingSizeAmount: "0.75",
                servingSizeUnit: "cup"))

    var churros: Food =
    Food(name: "Churros", course: .dessert,
         nutrition:
            Nutrition(
                calories: 210,
                gramsCarbs: 26,
                gramsFat: 10,
                gramsProtein: 4,
                gramsSugar: 1,
                mgSodium: 180),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "churro"))

    var beefBurgers: Food =
    Food(name: "Beef Burgers", course: .entree,
         nutrition:
            Nutrition(
                calories: 385,
                gramsCarbs: 0,
                gramsFat: 30,
                gramsProtein: 26,
                gramsSugar: 0,
                mgSodium: 100),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "burger"))

    var blackBeanBurgers: Food =
    Food(name: "Black Bean Burgers", course: .entree,
         nutrition:
            Nutrition(
                calories: 388,
                gramsCarbs: 36.6,
                gramsFat: 19.1,
                gramsProtein: 19.4,
                gramsSugar: 5.5,
                mgSodium: 482.9),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "burger"))

    var cajunCurlyFries: Food =
    Food(name: "Curly Fries", course: .side,
         nutrition:
            Nutrition(
                calories: 250,
                gramsCarbs: 34,
                gramsFat: 12,
                gramsProtein: 2.8,
                gramsSugar: 0.2,
                mgSodium: 170),
         servingSize:
            ServingSize(
                servingSizeAmount: "20",
                servingSizeUnit: "fries"))

    var yellowCake: Food =
    Food(name: "Yellow Cake", course: .dessert,
         nutrition:
            Nutrition(
                calories: 250,
                gramsCarbs: 35,
                gramsFat: 11,
                gramsProtein: 3),
         servingSize:
            ServingSize(
                servingSizeAmount: "1",
                servingSizeUnit: "piece"))
}
