//
//  Event.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import Foundation
import SwiftUI

struct Event {
    var id: UUID = UUID()
    var name: String
    var description: String
    var location: String?
    var start: Date
    var end: Date
}

struct SportEvent {
    var id: UUID = UUID()
    var sport: String?
    var description: String
    var location: String?
    var start: Date
    var end: Date
}
