//
//  DatePickerViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/2/22.
//

import Foundation
import SwiftUI

class DatePickerViewModel: ObservableObject {
    @Published var currentWeek: [Date] = []
    @Published var currentDay: Date = Date()
    
    init() {
        getCurrentWeek()
    }
    
    func getCurrentWeek() {
        
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else {
            return
        }
        
        (1...7).forEach { day in
            if let weekday = calendar.date(byAdding: .day, value: day, to: firstWeekDay) {
                currentWeek.append(weekday)
            }
        }
        
    }
    
    func extractDate(date: Date, format: String) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
        
    }
    
    func isToday(date: Date) -> Bool {
        Calendar.current.isDate(currentDay, inSameDayAs: date)
    }
}
