//
//  MoreView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct MoreView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ZStack {
            Color.app.screen
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    NavigationLink {
                        AccountView()
                    } label: {
                        MoreInfoCardView(imageName: "person.text.rectangle", name: "Account")
                    }
                    
                    NavigationLink {
                        MenuView()
                    } label: {
                        MoreInfoCardView(imageName: "menucard", name: "Menu")
                    }
                    
                    NavigationLink {
                        SportsView()
                    } label: {
                        MoreInfoCardView(imageName: "sportscourt", name: "Sports")
                    }
                    
                    NavigationLink {
                        EventsView()
                    } label: {
                        MoreInfoCardView(imageName: "calendar.badge.exclamationmark", name: "Events")
                    }
                    
                    NavigationLink {
                        LinkedAccountsView()
                    } label: {
                        MoreInfoCardView(imageName: "link.badge.plus", name: "Linking")
                    }
                    
                    NavigationLink {
                        AboutView()
                    } label: {
                        MoreInfoCardView(imageName: "info.circle.fill", name: "About")
                    }
                    
                    Spacer()
                        .frame(height: 50)
                }
                .padding(.horizontal, 15)
            }
            .navigationTitle("More")
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
