//
//  AllSportsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/24/22.
//

import SwiftUI

struct AllSportsView: View {
    @ObservedObject var vm: SportsViewModel = SportsViewModel()
    
    var body: some View {
        CalendarViewBuilder {
            if let sports = vm.sportsRepo.allSports {
                ForEach(sports) { sport in
                    EventsTile(sport: sport)
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

struct AllSportsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            AllSportsView()
                .preferredColorScheme(.dark)
        }
    }
}
