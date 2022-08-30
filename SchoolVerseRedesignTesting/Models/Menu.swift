//
//  Menu.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/30/22.
//

import Foundation
import SwiftUI

struct Menu: Identifiable {
    var id: UUID = UUID()
    var date: Date
    var breakfast: [Food]?
    var lunch: [Food]?
    var dinner: [Food]?
}
