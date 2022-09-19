//
//  MoreView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct MoreView: View {
    
    var body: some View {
        ZStack {
            Color.app.screen
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                Grid(horizontalSpacing: 20, verticalSpacing: 20) {
                    GridRow {
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
                    }
                    
                    GridRow {
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
                    }
                    
                    GridRow {
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
                    }
                } //: Grid
                .padding(15)
                
                
                Spacer()
                    .frame(height: 50)
            } //: Scroll View
            .navigationTitle("More")
        } //: ZStack
    } //: body
} //: More View

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
