//
//  ScheduleView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct ScheduleView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    today
                    
                    period1
                    
                    morningBreak
                    
                    period2
                    
                    period3
                    
                    lunchA
                    
                    lunchB
                    
                    period4
                    
                    period5
                    
                    Spacer()
                        .frame(height: 75)
                }
            }
            .navigationTitle("Schedule")
            .toolbarColorScheme(.dark, for: .navigationBar)
            //.toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

extension ScheduleView {
    private var today: some View {
        Group {
            HeaderLabel(name: "Today")
                .padding(.horizontal, 8)
            
            DayScheduleTile(day: DaySchedule(description: "Day 1", date: Date.now))
                .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var period1: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.appDev, order: .period1,
                       start: "8:20", end: "9:35"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var morningBreak: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.advisory, order: .morningAssembly,
                       start: "9:35", end: "9:50"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var period2: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.free, order: .period2,
                       start: "9:55", end: "10:55"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var period3: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.stats, order: .period3,
                       start: "11:00", end: "12:00"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var lunchA: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.csClub, order: .lunchA,
                       start: "12:00", end: "12:30"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var lunchB: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.lunch, order: .lunchB,
                       start: "12:30", end: "1:00"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var period4: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.dataScience, order: .period4,
                       start: "1:05", end: "2:05"))
            .padding(.horizontal)
        }
    }
}

extension ScheduleView {
    private var period5: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.free, order: .period5,
                       start: "2:10", end: "3:10"))
            .padding(.horizontal)
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
