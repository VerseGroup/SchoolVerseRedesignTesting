//
//  PeriodTileAndHeader.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import SwiftUI

struct PeriodTileAndHeader: View {
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
            .padding()
            .padding(.leading, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.app.secondary)
                    .shadow(color: Color.primary.opacity(0.2), radius: 3, x: 0, y: 2)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(periodInfo.classInfo.color.color)
                            .frame(width: 15)
                            .offset(x: -184, y: 0)
                            .overlay{
                                Rectangle()
                                    .fill(periodInfo.classInfo.color.color)
                                    .frame(width: 7)
                                    .offset(x: -180, y: 0)
                            }
                    }
            )
        }
    }
}

struct PeriodTileAndHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Color.app.screen.ignoresSafeArea()

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
            
            ZStack {
                Color.app.screen.ignoresSafeArea()
                
                PeriodTileAndHeader(
                    periodInfo: Period(
                        classInfo:
                            Class(title: "POST-AP DATA ANALYTICS & VISUALIZATION - MAJOR -1", teacher: "Mr. Shaw", room: "G207", color: .green),
                        order: .period2,
                        start: "11:00",
                        end: "12:00")
                )
                .padding()
                .preferredColorScheme(.dark)
                
            }
        }
    }
}



