//
//  MySportsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/24/22.
//

import SwiftUI

struct MySportsView: View {
    @ObservedObject var vm: SportsViewModel = SportsViewModel()
    
    var body: some View {
        CalendarViewBuilder {
            if let sports = vm.sportsRepo.mySports {
                ForEach(sports) { event in
                    EventsTile(sport: event)
                        .padding()
                }
            } else {
                Spacer()
                    .frame(height: 30)
                
                Text("None of your games are scheduled for today")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
            }
            
            Spacer()
                .frame(height: 95)
        }
    }
}

struct MySportsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            MySportsView()
                .preferredColorScheme(.dark)
        }
    }
}
