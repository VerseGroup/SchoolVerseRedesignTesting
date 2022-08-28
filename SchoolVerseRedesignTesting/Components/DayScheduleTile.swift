//
//  DayScheduleTile.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import SwiftUI

struct DayScheduleTile: View {
    @State var day: DaySchedule
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(day.description)
                    .fontWeight(.semibold)
                Text(
                    day.date
                        .formatted(date: .complete, time: .omitted)
                        .dropLast(6)
                )
                .fontWeight(.semibold)
            }
            .font(.title)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.app.secondary)
                .shadow(color: Color.primary.opacity(0.3), radius: 5, x: 0, y: 2)
        )
    }
}

struct DayScheduleTile_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DayScheduleTile(day: DaySchedule(description: "Day 1", date: Date.now))
                .padding()
                .previewLayout(.sizeThatFits)
            
            DayScheduleTile(day: DaySchedule(description: "Day 1", date: Date.now))
                .padding()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
