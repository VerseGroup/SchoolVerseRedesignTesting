//
//  EventsTile.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/3/22.
//

import SwiftUI

struct EventsTile: View {
    @State var event: Event?
    @State var sport: SportEvent?
    
    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            Text((event?.name ?? sport?.description)!)
                .font(.system(size: 25))
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "clock")
                    
                    VStack (alignment: .leading, spacing: 10){
                        Text((event?.date.formatted(date: .complete, time: .omitted) ?? sport?.date.formatted(date: .complete, time: .omitted))!)
                        
                        if let event = event {
                            Text("\(event.start)-\(event.end)")
                        } else if let sportEvent = sport {
                            Text(sportEvent.start)
                        }
                    }
                    
                    Spacer()
                }
                
                HStack {
                    if let location = event?.location {
                        Image(systemName: "mappin")
                        
                        Text(location)
                        
                        Spacer()
                    } else if let location = sport?.location {
                        Image(systemName: "mappin")
                        
                        Text(location)
                        
                        Spacer()
                    }
                }
            }
        }
        .padding()
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity)
        .taintedGlass()
    }
}

struct EventsTile_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.clear)
                .heavyGlass()
                .ignoresSafeArea()
            
            EventsTile(event: Event(name: "HPA Executive Board Meeting", date: Date.now, description: "HPA Executive Board Meeting", location: "Phillip Savage Whitmore Room", start: "8:15 AM", end: "10:30 AM"))
                .preferredColorScheme(.dark)
                .padding()
        }
    }
}
