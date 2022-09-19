//
//  Period.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation

struct Period {
    var id: UUID = UUID()
    var classInfo: Class
    var order: PeriodOrder
    var start: String
    var end: String
}

enum PeriodOrder {
    case homeroom
    case period1
    case morningAssembly
    case period2
    case period3
    case lunchA
    case lunchB
    case period4
    case period5
    
    var description: String {
        switch self {
        case .homeroom:
            return "Homeroom"
        case .period1:
            return "Period 1"
        case .morningAssembly:
            return "Morning Break Period"
        case .period2:
            return "Period 2"
        case .period3:
            return "Period 3"
        case .lunchA:
            return "1st Lunch"
        case .lunchB:
            return "2nd Lunch"
        case .period4:
            return "Period 4"
        case .period5:
            return "Period 5"
        }
    }
    
    var sortOrder: Int {
        switch self {
        case .homeroom:
            return 0
        case .period1:
            return 1
        case .morningAssembly:
            return 2
        case .period2:
            return 3
        case .period3:
            return 4
        case .lunchA:
            return 5
        case .lunchB:
            return 6
        case .period4:
            return 7
        case .period5:
            return 8
        }
    }
}
