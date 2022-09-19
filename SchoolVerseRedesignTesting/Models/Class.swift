//
//  Class.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation
import SwiftUI

struct Class {
    var id: UUID = UUID()
    var title: String
    var teacher: String?
    var room: String?
    
    var color: ClassColor
    
    var tasks: [Task]?
}

enum ClassColor {
    case red
    case orange
    case yellow
    case lime
    case green
    case lightBlue
    case blue
    case purple
    case pink
    case magenta
    case none
    
    var description: String{
        switch self {
        case .red:
            return "Blue"
        case .orange:
            return "Cyan"
        case .yellow:
            return "Pink"
        case .lime:
            return "Purple"
        case .green:
            return "Blue"
        case .lightBlue:
            return "Cyan"
        case .blue:
            return "Pink"
        case .purple:
            return "Purple"
        case .pink:
            return "Cyan"
        case .magenta:
            return "Pink"
        case .none:
            return "Purple"
        }
    }
    
    var color: Color {
        switch self {
        case .red:
            return Color.classColor.red
        case .orange:
            return Color.classColor.orange
        case .yellow:
            return Color.classColor.yellow
        case .lime:
            return Color.classColor.lime
        case .green:
            return Color.classColor.green
        case .lightBlue:
            return Color.classColor.lightBlue
        case .blue:
            return Color.classColor.blue
        case .purple:
            return Color.classColor.purple
        case .pink:
            return Color.classColor.pink
        case .magenta:
            return Color.classColor.magenta
        case .none:
            return Color.classColor.none
        }
    }
}
