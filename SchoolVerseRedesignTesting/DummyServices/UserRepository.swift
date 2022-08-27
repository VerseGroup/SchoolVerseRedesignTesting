//
//  UserRepository.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import Foundation
import SwiftUI

class UserRepository: ObservableObject {
    
    //Classes and Activies
    private var homeroom: Class = Class(title: "HOMEROOM", teacher: "Mr. Sykes", room: "G108")
    private var english: Class = Class(title: "ENGLISH 12 - PANOPTICON PRIME -3", teacher: "Mr. Lobko", room: "R124")
    private var dataScience: Class = Class(title: "POST-AP DATA ANALYTICS & VISUALIZATION - MAJOR -1", teacher: "Mr. Shaw", room: "G207")
    private var physics: Class = Class(title: "ADVANCED PHYSICS -2", teacher: "Mr. Karpinski", room: "S018")
    private var calcBC: Class = Class(title: "AP CALCULUS (BC) -1", teacher: "Ms. Kaplan", room: "R214")
    private var stats: Class = Class(title: "AP STATISTICS -3", teacher: "Ms. Richardson", room: "R215")
    private var jazz: Class =  Class(title: "JAZZ COMBOS", teacher: "Dr. Malkiel", room: "Band Room 1")
    private var appDev: Class = Class(title: "POST-AP MOBILE APP DEVELOPMENT - MINOR -1", teacher: "Mrs. Tranchida", room: "G201")
    private var csClub: Class = Class(title: "HACKLEY CS CLUB", room: "G201")
    private var mpClub: Class = Class(title: "MUSIC PRODUCTION CLUB", room: "G201")
    private var yearbook: Class = Class(title: "YEARBOOK COMMITTEE", teacher: "Ms. Bottalico", room: "Photo Room")
    
    private var free: Class = Class(title: "Free")
    private var advisory: Class = Class(title: "Advisory", teacher: "Mr. Francis", room: "G113")
    private var gradeMeeting: Class = Class(title: "Grade Meeting")
    private var assembly: Class = Class(title: "Assembly")
    private var lunch: Class = Class(title: "Lunch")
    
    init() {
        //Day 1
        let day1: DaySchedule =
            DaySchedule(
                description: "Day 1",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: physics, description: "Period 1", start: "8:20", end: "9:35"),
                    Period(classInfo: advisory, description: "Morning Assembly", start: "9:35", end: "9:55"),
                    Period(classInfo: english, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: dataScience, description: "Period 3", start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:00", end: "1:00"),
                    Period(classInfo: free, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: appDev, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 2
        let day2: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: free, description: "Period 1", start: "8:20", end: "9:20"),
                    Period(classInfo: assembly, description: "Morning Assembly", start: "9:20", end: "9:55"),
                    Period(classInfo: calcBC, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: free, description: "Period 3", start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:15", end: "1:00"),
                    Period(classInfo: stats, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: english, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 3
        let day3: DaySchedule =
            DaySchedule(
                description: "Day 3",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: jazz, description: "Period 1", start: "8:20", end: "9:35"),
                    Period(classInfo: mpClub, description: "Morning Assembly", start: "9:35", end: "9:55"),
                    Period(classInfo: physics, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: english, description: "Period 3", start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:00", end: "1:00"),
                    Period(classInfo: dataScience, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: calcBC, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 4
        let day4: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: stats, description: "Period 1", start: "8:20", end: "9:20"),
                    Period(classInfo: gradeMeeting, description: "Morning Assembly", start: "9:20", end: "9:55"),
                    Period(classInfo: free, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: calcBC, description: "Period 3", start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:15", end: "1:00"),
                    Period(classInfo: appDev, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: physics, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 5
        let day5: DaySchedule =
            DaySchedule(
                description: "Day 3",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: dataScience, description: "Period 1", start: "8:20", end: "9:35"),
                    Period(classInfo: free, description: "Morning Assembly", start: "9:35", end: "9:55"),
                    Period(classInfo: free, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: physics, description: "Period 3", start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:00", end: "1:00"),
                    Period(classInfo: english, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: free, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 6
        let day6: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: free, description: "Period 1", start: "8:20", end: "9:20"),
                    Period(classInfo: advisory, description: "Morning Assembly", start: "9:20", end: "9:55"),
                    Period(classInfo: stats, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: free, description: "Period 3", start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:15", end: "1:00"),
                    Period(classInfo: calcBC, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: free, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 7
        let day7: DaySchedule =
            DaySchedule(
                description: "Day 3",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: english, description: "Period 1", start: "8:20", end: "9:35"),
                    Period(classInfo: csClub, description: "Morning Assembly", start: "9:35", end: "9:55"),
                    Period(classInfo: dataScience, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: jazz, description: "Period 3", start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:00", end: "1:00"),
                    Period(classInfo: physics, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: stats, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        //Day 8
        let day8: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, description: "Homeroom", start: "8:10", end: "8:20"),
                    Period(classInfo: calcBC, description: "Period 1", start: "8:20", end: "9:20"),
                    Period(classInfo: assembly, description: "Morning Assembly", start: "9:20", end: "9:55"),
                    Period(classInfo: appDev, description: "Period 2", start: "9:55", end: "10:55"),
                    Period(classInfo: stats, description: "Period 3", start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, description: "Lunch and Collaborative Time", start: "12:15", end: "1:00"),
                    Period(classInfo: yearbook, description: "Period 4", start: "1:05", end: "2:05"),
                    Period(classInfo: dataScience, description: "Period 5", start: "2:10", end: "3:10")
                ])
        
        let mySchedule: Schedule = Schedule(days: [day1, day2, day3, day4, day5, day6, day7, day8])
        
        var _: SVUser =
        SVUser(
            name: "Daniel Shola-Philips",
            preferredFirst: "Daniel",
            lightTheme: .systemMode,
            accentColor: .cyan,
            schedule: mySchedule,
            classes: [
                english,
                dataScience,
                physics,
                calcBC,
                stats,
                jazz,
                appDev,
                csClub,
                mpClub,
                yearbook,
            ],
            sports: ["Boys' Varsity Basketball", "Boys' Varsity Baseball"])
    } //: init
} //: User Repo
