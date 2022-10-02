//
//  PeriodTileAndHeader.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import SwiftUI

struct PeriodTileAndHeader: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    @State var periodInfo: Period
    @State var dashBoardTitle: String?
    
    var body: some View {
        VStack {
            HeaderLabel(name: dashBoardTitle ?? periodInfo.order.description)
                .padding(.top, 5)
            
            //Period Tile
            VStack (alignment: .leading) {
                Text("\(periodInfo.start) - \(periodInfo.end)")
                    .font(.caption)
                
                Text(periodInfo.classInfo.title)
                    .font(
                        periodInfo.classInfo.title == "Lunch" ||
                        periodInfo.classInfo.title == "Free Period!"
                        ? .title : .headline)
                    .fontWeight(.semibold)
                
                HStack {
                    Text(periodInfo.classInfo.teacher ?? "")
                    
                    Spacer()
                    
                    Text(periodInfo.classInfo.room ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            }
            .foregroundColor(Color.white)
            .padding()
            .padding(.leading, 10)
            .glassCardFull()
        }
    }
}

struct PeriodTileAndHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                ColorfulBackgroundView()

                PeriodTileAndHeader(
                    periodInfo: Period(
                        classInfo:
                            Class(title: "Lunch", color: .none),
                        order: .lunchB,
                        start: "12:30",
                        end: "1:00")
                    
                )
                .padding()
            }
        }
    }
}



