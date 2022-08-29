//
//  SVUser.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import Foundation
import SwiftUI

struct SVUser {
    var id: UUID = UUID()
    var name: String
    var preferredFirst: String
    var grade: Int
    
    var lightTheme: LightTheme
    var accentColor: AccentColor
    
    var schedule: Schedule
    var classes: [Class]
    var sports: [String]
}

enum LightTheme {
    case alwaysLight
    case alwaysDark
    case systemMode
    
    var description: String {
        switch self {
        case .alwaysLight:
            return "Light"
        case .alwaysDark:
            return "Dark"
        default:
            return "System"
        }
    }
}

enum AccentColor {
    case blue
    case cyan
    case pink
    case purple
    
    var description: String{
        switch self {
        case .blue:
            return "Blue"
        case .cyan:
            return "Cyan"
        case .pink:
            return "Pink"
        case .purple:
            return "Purple"
        }
    }
    
    var color: Color {
        switch self {
        case .blue:
            return Color.accent.blue
        case .cyan:
            return Color.accent.cyan
        case .pink:
            return Color.accent.pink
        case .purple:
            return Color.accent.purple
        }
    }
}
