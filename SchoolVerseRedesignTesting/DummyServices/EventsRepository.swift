//
//  File.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/3/22.
//

import Foundation
import SwiftUI

class EventsRepository: ObservableObject {

    @Published var events: [Event] = [
        Event(
            name: "HPA Executive Board Meeting",
            date: Date.now,
            description: "HPA Executive Board Meeting",
            location: "Phillip Savage Whitmore Room",
            start: "8:15 AM",
            end: "10:30 AM"),
        Event(
            name: "Art Trip to Chelsea Galleries",
            date: Date.now,
            description: "Art Trip to Chelsea Galleries",
            start: "8:20 AM",
            end: "3:00 AM"),
        Event(
            name: "HPA Book Club (ZOOM)",
            date: Date.now,
            description: "HPA Book Club Zoom https://us02web.zoom.us/j/9147934444?pwd=VUd3OEVmVjFlSWJLNlp4aGNYWHpEQT09 Meeting ID: 914 793 4444 Passcode: 671603 The October Book Club Selection is I Must Betray You by Ruta Sepetys. Please contact Stephanie Bayrooti to RSVP",
            start: "7:30",
            end: "8:30")
    ]
}
