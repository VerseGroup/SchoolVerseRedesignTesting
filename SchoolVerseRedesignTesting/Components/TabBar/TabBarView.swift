//
//  TabBarView.swift
//  SchoolVerseTesting
//
//  Created by Steven Yu on 5/19/22.
//

import SwiftUI

// implemented from Swiftful Thinking
// TODO: change to custom, more custom

struct TabBarView: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
        tabBar
            .onChange(of: selection, perform: { value in
                withAnimation(.easeInOut) {
                    localSelection = value
                }
            })
    }
}

struct TabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .home, .schedule, .tasks, .clubs, .more
    ]
    
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            VStack {
                Spacer()
                TabBarView(tabs: tabs, selection: .constant(tabs.first!), localSelection: tabs.first!)
                    
            }
        }
        
    }
        
}

extension TabBarView {
    
    private func tabView(tab: TabBarItem) -> some View {

        Image(systemName: tab.iconName)
            .font(.title)
            .foregroundColor(Color.white)
            .padding(.vertical, 7.0)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(
                ZStack {
                    if localSelection == tab {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(userRepo.accent.color.gradient)
                            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                            .frame(width: 60, height: 60)
                    }
                }
            )
            .contentShape(Rectangle())
    }
    
    private var tabBar: some View {
        HStack {
            Spacer()
            
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
                
                Spacer()
            }
        }
        .padding(.top, 20.0)
        .shadow(color: userRepo.accent.color.opacity(0.3), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
        .background(
            
            
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .opacity(0.1)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color("BG2"))
                        .opacity(0.9)
                )
                .ignoresSafeArea()
        )
        
    }
    
    private func switchToTab(tab: TabBarItem) {
        selection = tab
    }
    
}
