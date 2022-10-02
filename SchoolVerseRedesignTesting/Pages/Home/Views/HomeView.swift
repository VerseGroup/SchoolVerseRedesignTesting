//
//  HomeView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
        
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    today
                    
                    currentPeriod
                    
                    nextClass
                    
                    nextFree
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
            .navigationTitle("Hello, \(userRepo.first)")

        }
        
    }
}

extension HomeView {
    private var today: some View {
        Group {
            HeaderLabel(name: "Today")
                .padding(.horizontal, 8)
            
            DayScheduleTile(day: DaySchedule(description: "Day 1", date: Date.now))
                .padding(.horizontal)
        }
    }
}

extension HomeView {
    private var currentPeriod: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.appDev, order: .period1,
                       start: "8:20", end: "9:35"), dashBoardTitle: "Current Period")
            .padding(.horizontal)
        }
    }
}

extension HomeView {
    private var nextClass: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.stats, order: .period3,
                       start: "11:00", end: "12:00"), dashBoardTitle: "Next Class")
            .padding(.horizontal)
        }
    }
}

extension HomeView {
    private var nextFree: some View {
        Group {
            PeriodTileAndHeader(periodInfo:
                Period(classInfo: userRepo.free, order: .period2,
                       start: "9:55", end: "10:55"), dashBoardTitle: "Next Free")
            .padding(.horizontal)
        }
    }
}

extension HomeView {
    func getAttributedString()-> AttributedString {
        var attStr = AttributedString("Hello, \(userRepo.first)")
        
        attStr.foregroundColor = userRepo.accent.color
        
        if let range = attStr.range(of: userRepo.first) {
            attStr[range].foregroundColor = userRepo.accent.color
        }
        
        return attStr
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
