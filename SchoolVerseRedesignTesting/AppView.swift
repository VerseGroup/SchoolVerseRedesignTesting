//
//  AppView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct AppView: View {
    @State private var selection: TabBarItem = .home
    let tabs: [TabBarItem] = [.home, .schedule, .tasks, .clubs, .more]
    
    var body: some View {
        TabBarViewBuilder {
            NavigationStack {
                HomeView()
            }
            .tabBarItem(tab: TabBarItem.home, selection: selection)
            
            NavigationStack {
                ScheduleView()
            }
            .tabBarItem(tab: TabBarItem.schedule, selection: selection)
            
            NavigationStack {
                TasksView()
            }
            .tabBarItem(tab: TabBarItem.tasks, selection: selection)
            
            NavigationStack {
                ClubsView()
            }
            .tabBarItem(tab: TabBarItem.clubs, selection: selection)
            
            NavigationStack {
                MoreView()
            }
            .tabBarItem(tab: TabBarItem.more, selection: selection)
            
        } tabBar: {
            TabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
        .colorScheme(.dark)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
