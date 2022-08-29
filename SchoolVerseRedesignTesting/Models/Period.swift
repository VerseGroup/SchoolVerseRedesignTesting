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
    case lunch
    case period4
    case period5
    
    var description: String {
        switch self {
        case .homeroom:
            return "Homeroom"
        case .period1:
            return "Period 1"
        case .morningAssembly:
            return "Morning Assembly"
        case .period2:
            return "Period 2"
        case .period3:
            return "Period 3"
        case .lunch:
            return "Lunch and Collaborative Time"
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
        case .lunch:
            return 5
        case .period4:
            return 6
        case .period5:
            return 7
        }
    }
}
