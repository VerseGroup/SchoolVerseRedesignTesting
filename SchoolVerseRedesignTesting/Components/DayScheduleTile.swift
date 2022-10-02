//
//  DayScheduleTile.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/27/22.
//

import SwiftUI

struct DayScheduleTile: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
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
        .foregroundColor(Color.white)
        .padding()
        .frame(maxWidth: .infinity)
        .glassCardFull()
    }
}

struct DayScheduleTile_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            DayScheduleTile(day: DaySchedule(description: "Day 1", date: Date.now))
                .padding()
            .previewLayout(.sizeThatFits)
        }
    }
}
