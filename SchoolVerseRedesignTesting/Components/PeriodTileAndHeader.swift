//
//  PeriodTileAndHeader.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import SwiftUI

struct PeriodTileAndHeader: View {
    @State var periodInfo: Period
    
    var body: some View {
        VStack {
            HeaderLabel(name: periodInfo.description)
            
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
                    .shadow(color: Color.primary.opacity(0.2), radius: 5, x: 0, y: 2)
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
                        description: "Period 5",
                        start: "2:10",
                        end: "3:10")
                    
                )
                .padding()
                
                    
            }
            
            ZStack {
                Color.app.screen.ignoresSafeArea()
                
                PeriodTileAndHeader(
                    periodInfo: Period(
                        classInfo:
                            Class(title: "POST-AP DATA ANALYTICS & VISUALIZATION - MAJOR -1", teacher: "Mr. Shaw", room: "G207", color: .green),
                        description: "Period 3",
                        start: "11:00",
                        end: "12:00")
                )
                .padding()
                .preferredColorScheme(.dark)
                
            }
        }
    }
}
