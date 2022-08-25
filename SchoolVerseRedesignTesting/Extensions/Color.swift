//
//  Color.swift
//  SchoolVerseRedesignTesting
//
//  Created by Daniel Shola-Philips on 8/25/22.
//

import Foundation
import SwiftUI

extension Color {
    static let app = AppTheme()
    static let accent = AccentColors()
}


struct AppTheme {
    let screen = Color("Screen Color")
    let text = Color("Text Color")
    let secondary = Color("Secondary App Color")
}

struct AccentColors {
    let blue = Color("Blue")
    let cyan = Color("Cyan")
    let pink = Color("Pink")
    let purple = Color("Purple")
    
    let gradientBlue = Color("Blue Gradient")
    let gradientCyan = Color("Cyan Gradient")
    let gradientPink = Color("Pink Gradient")
    let gradientPurple = Color("Purple Gradient")
}
