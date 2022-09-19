//
//  TasksView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct TasksView: View {
    @State var sort: Int = 0
    
    var body: some View {
        ZStack {
            Color.app.screen
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    if sort == 0 {
                        TasksByClassView()
                    } else {
                        TasksByDateView()
                    }
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Picker(selection: $sort, label: Text("Sorting options")) {
                            Text("Sort by Class").tag(0)
                            Text("Sort by Date").tag(1)
                        }
                    }
                    label: {
                        NavMenuButtonView()
                    }
                    
                } //: ToolbarItem
            } //: toolbar
        }
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
