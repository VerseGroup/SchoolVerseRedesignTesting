//
//  Event.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import Foundation
import SwiftUI

struct Event: Identifiable {
    var id: UUID = UUID()
    var name: String
    var date: Date
    var description: String
    var location: String?
    var start: String
    var end: String
}

struct SportEvent: Identifiable {
    var id: UUID = UUID()
    var description: String
    var date: Date
    var location: String?
    var start: String
}
