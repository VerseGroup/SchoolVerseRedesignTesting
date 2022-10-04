//
//  EventsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct EventsView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    @ObservedObject var vm: EventsViewModel = EventsViewModel()
    
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            CalendarViewBuilder {
                if let events = vm.eventsRepo.events {
                    ForEach(events) { event in
                        EventsTile(event: event)
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
        .navigationTitle("Events")
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
            .preferredColorScheme(.dark)
    }
}
