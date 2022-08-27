//
//  Day.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation

struct DaySchedule {
    var id: UUID = UUID()
    var description: String
    
    var date: Date
    
    var periods: [Period]
}
