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
    
    //Majors
    private var english: Class = Class(title: "ENGLISH 12 - PANOPTICON PRIME -3", teacher: "Mr. Lobko", room: "R124", color: .yellow)
    private var dataScience: Class = Class(title: "POST-AP DATA ANALYTICS & VISUALIZATION - MAJOR -1", teacher: "Mr. Shaw", room: "G207", color: .green)
    private var physics: Class = Class(title: "ADVANCED PHYSICS -2", teacher: "Mr. Karpinski", room: "S018", color: .blue)
    private var calcBC: Class = Class(title: "AP CALCULUS (BC) -1", teacher: "Ms. Kaplan", room: "R214", color: .lightBlue)
    private var stats: Class = Class(title: "AP STATISTICS -3", teacher: "Ms. Richardson", room: "R215", color: .red)
    
    //Minors
    private var jazz: Class =  Class(title: "JAZZ COMBOS", teacher: "Dr. Malkiel", room: "Band Room 1", color: .orange)
    private var appDev: Class = Class(title: "POST-AP MOBILE APP DEVELOPMENT - MINOR -1", teacher: "Mrs. Tranchida", room: "G201", color: .purple)
    
    //Clubs
    private var csClub: Class = Class(title: "HACKLEY CS CLUB", room: "G201", color: .lime)
    private var mpClub: Class = Class(title: "MUSIC PRODUCTION CLUB", room: "G201", color: .lime)
    private var yearbook: Class = Class(title: "YEARBOOK COMMITTEE", teacher: "Ms. Bottalico", room: "Photo Room", color: .lime)
    
    //Other Periods
    private var free: Class = Class(title: "Free Period!", color: .none)
    private var homeroom: Class = Class(title: "HOMEROOM", teacher: "Mr. Sykes", room: "G108", color: .none)
    private var advisory: Class = Class(title: "ADVISORY", teacher: "Mr. Francis", room: "G113", color: .none)
    private var gradeMeeting: Class = Class(title: "GRADE MEETING", color: .none)
    private var assembly: Class = Class(title: "ASSEMBLY", color: .none)
    private var lunch: Class = Class(title: "Lunch", color: .none)
    
    init() {
        //Day 1
        let day1: DaySchedule =
            DaySchedule(
                description: "Day 1",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: physics, order: .period1, start: "8:20", end: "9:35"),
                    Period(classInfo: advisory, order: .morningAssembly, start: "9:35", end: "9:55"),
                    Period(classInfo: english, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: dataScience, order: .period3, start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, order: .lunch, start: "12:00", end: "1:00"),
                    Period(classInfo: free, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: appDev, order: .period4, start: "2:10", end: "3:10")
                ])
        
        //Day 2
        let day2: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: free, order: .period1, start: "8:20", end: "9:20"),
                    Period(classInfo: assembly, order: .morningAssembly, start: "9:20", end: "9:55"),
                    Period(classInfo: calcBC, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: free, order: .period3, start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, order: .lunch, start: "12:15", end: "1:00"),
                    Period(classInfo: stats, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: english, order: .period5, start: "2:10", end: "3:10")
                ])
        
        //Day 3
        let day3: DaySchedule =
            DaySchedule(
                description: "Day 3",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: jazz, order: .period1, start: "8:20", end: "9:35"),
                    Period(classInfo: mpClub, order: .morningAssembly, start: "9:35", end: "9:55"),
                    Period(classInfo: physics, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: english, order: .period3, start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, order: .lunch, start: "12:00", end: "1:00"),
                    Period(classInfo: dataScience, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: calcBC,order: .period5, start: "2:10", end: "3:10")
                ])
        
        //Day 4
        let day4: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: stats, order: .period1, start: "8:20", end: "9:20"),
                    Period(classInfo: gradeMeeting, order: .morningAssembly, start: "9:20", end: "9:55"),
                    Period(classInfo: free, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: calcBC, order: .period3, start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, order: .lunch, start: "12:15", end: "1:00"),
                    Period(classInfo: appDev, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: physics, order: .period5, start: "2:10", end: "3:10")
                ])
        
        //Day 5
        let day5: DaySchedule =
            DaySchedule(
                description: "Day 3",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: dataScience, order: .period1, start: "8:20", end: "9:35"),
                    Period(classInfo: free, order: .morningAssembly, start: "9:35", end: "9:55"),
                    Period(classInfo: free, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: physics, order: .period3, start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, order: .lunch, start: "12:00", end: "1:00"),
                    Period(classInfo: english, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: free, order: .period5, start: "2:10", end: "3:10")
                ])
        
        //Day 6
        let day6: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: free, order: .period1, start: "8:20", end: "9:20"),
                    Period(classInfo: advisory, order: .morningAssembly, start: "9:20", end: "9:55"),
                    Period(classInfo: stats, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: free, order: .period3, start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, order: .lunch, start: "12:15", end: "1:00"),
                    Period(classInfo: calcBC, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: free, order: .period5, start: "2:10", end: "3:10")
                ])
        
        //Day 7
        let day7: DaySchedule =
            DaySchedule(
                description: "Day 3",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: english, order: .period1, start: "8:20", end: "9:35"),
                    Period(classInfo: csClub, order: .morningAssembly, start: "9:35", end: "9:55"),
                    Period(classInfo: dataScience, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: jazz, order: .period3, start: "11:00", end: "12:00"),
                    Period(classInfo: lunch, order: .lunch, start: "12:00", end: "1:00"),
                    Period(classInfo: physics, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: stats, order: .period5, start: "2:10", end: "3:10")
                ])
        
        //Day 8
        let day8: DaySchedule =
            DaySchedule(
                description: "Day 2",
                date: Date(),
                periods: [
                    Period(classInfo: homeroom, order: .homeroom, start: "8:10", end: "8:20"),
                    Period(classInfo: calcBC, order: .period1, start: "8:20", end: "9:20"),
                    Period(classInfo: assembly, order: .morningAssembly, start: "9:20", end: "9:55"),
                    Period(classInfo: appDev, order: .period2, start: "9:55", end: "10:55"),
                    Period(classInfo: stats, order: .period3, start: "11:00", end: "12:15"),
                    Period(classInfo: lunch, order: .lunch, start: "12:15", end: "1:00"),
                    Period(classInfo: yearbook, order: .period4, start: "1:05", end: "2:05"),
                    Period(classInfo: dataScience, order: .period5, start: "2:10", end: "3:10")
                ])
        
        let mySchedule: Schedule = Schedule(days: [day1, day2, day3, day4, day5, day6, day7, day8])
        
        var _: SVUser =
        SVUser(
            name: "Daniel Shola-Philips",
            preferredFirst: "Daniel",
            grade: 12,
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
            sports: [
                "Boys' Varsity Basketball",
                "Boys' Varsity Baseball"
            ])
    } //: init
} //: User Repo
