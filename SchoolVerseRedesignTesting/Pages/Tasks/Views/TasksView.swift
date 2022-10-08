//
//  TasksView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct TasksView: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    @State var sort: Int = 1
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    if sort == 0 {
                        TasksByClassView()
                    } else {
                        TasksByDateView()
                    }
                    
                    Spacer()
                        .frame(height: 75)
                }
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Menu {
                        Picker(selection: $sort, label: Text("Sorting options")) {
                            Text("Sort by Class").tag(0)
                            Text("Sort by Date").tag(1)
                        }
                    }
                    label: {
                        NavMenuButtonView()
                    }
                    
                    Button {
                        showSheet.toggle()
                    } label: {
                        NavPlusButtonView()
                    }
                    .sheet(isPresented: $showSheet, content: {
                        AddTaskView(dateChosen: Date.now)
                    })
                }
            } //: toolbar
        }
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
