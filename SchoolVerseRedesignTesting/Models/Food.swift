//
//  Food.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/29/22.
//

import Foundation

struct Food: Identifiable {
    var id: UUID = UUID()
    var name: String
    var course: CourseType
    var nutrition: Nutrition
    var servingSize: ServingSize
}

enum CourseType {
    case entree
    case side
    case soup
    case deli
    case dessert
    case other
    
    var description: String {
        switch self {
        case .entree:
            return "Entree"
        case .side:
            return "Entree Side"
        case .soup:
            return "Soup"
        case .deli:
            return "Deli Special"
        case .dessert:
            return "Dessert"
        case .other:
            return "Other Foods"
        }
    }
}

struct Nutrition {
    var calories: Double?
    var gramsCarbs: Double?
    var gramsFat: Double?
    var gramsProtein: Double?
    var gramsSugar: Double?
    var mgSodium: Double?
}

struct ServingSize {
    var servingSizeAmount: String?
    var servingSizeUnit: String?
}
