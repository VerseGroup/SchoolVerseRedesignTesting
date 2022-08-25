//
//  AppView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct AppView: View {
    @State private var selection: TabBarItem = .home
    let tabs: [TabBarItem] = [.home, .tasks, .schedule, .more]
    
    var body: some View {
        TabBarViewBuilder {
            NavigationView {
                HomeView()
            }
            .tabBarItem(tab: TabBarItem.home, selection: selection)
            
            NavigationView {
                TasksView()
            }
            .tabBarItem(tab: TabBarItem.tasks, selection: selection)
            
            NavigationView {
                ScheduleView()
            }
            .tabBarItem(tab: TabBarItem.schedule, selection: selection)
            
            NavigationView {
                MoreView()
            }
            .tabBarItem(tab: TabBarItem.more, selection: selection)
            
        } tabBar: {
            TabBarView(tabs: tabs, selection: $selection, localSelection: selection)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
