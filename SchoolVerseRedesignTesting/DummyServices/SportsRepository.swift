//
//  SportsRepository.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/4/22.
//

import Foundation
import SwiftUI

class SportsRepository: ObservableObject {
    @Published var allSports : [SportEvent] = [
        SportEvent(
            description: "Tennis - JV Girls vs. Trinity School",
            date: Date.now,
            location: "Cary Leeds Tennis Center",
            start: "4:00 PM"
        ),
        
        SportEvent(
            description: "Field Hockey - JV vs. Rye Country Day School",
            date: Date.now,
            location: "South Turf",
            start: "4:15 PM"
        ),
        
        SportEvent(
            description: "Soccer - JV Girls vs. Trinity School",
            date: Date.now,
            location: "Field #37 Randall's Island",
            start: "4:15 PM"
        ),
        
        SportEvent(
            description: "Field Hockey - Varsity vs. Sacred Heart Greenwich",
            date: Date.now,
            location: "Sacred Heart Greenwich",
            start: "4:30 PM"
        ),
        
        SportEvent(
            description: "Soccer - Varsity Boys vs. Trinity School",
            date: Date.now,
            location: "North Turf",
            start: "4:30 PM"
        ),
        
        SportEvent(
            description: "Soccer - Varsity Girls vs. Trinity School",
            date: Date.now,
            location: "Field #82 Randall's Island",
            start: "4:30 PM"
        ),
        
        SportEvent(
            description: "Tennis - Varsity Girls vs. Trinity School",
            date: Date.now,
            location: "Roberts Tennis Courts",
            start: "4:30 PM"
        ),
        
        SportEvent(
            description: "Football - Varsity vs. Morristown-Beard",
            date: Date.now,
            location: "Pickert Field",
            start: "7:00 PM"
        )
    ]
    
    @Published var mySports: [SportEvent] = [
        SportEvent(
            description: "Football - Varsity vs. Morristown-Beard",
            date: Date.now,
            location: "Pickert Field",
            start: "7:00 PM"
        )
    ]
}
