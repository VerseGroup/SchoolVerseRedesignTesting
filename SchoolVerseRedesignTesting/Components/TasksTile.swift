//
//  TasksTile.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/22/22.
//

import SwiftUI

struct TasksTile: View {
    @State var task: Task?
    @State var completed: Bool
    @State var classInfo: Class
    
    var body: some View {
        VStack {
            
            if task != nil {
                HStack {
                    checkBoxButton
                    
                    VStack (alignment: .leading) {
                        taskName
                        
                        taskClassInfo
                        
                        dueDate
                    }
                    
                    Spacer()
                }
            } else {
                noAssignments
            }
        } //: VStack
        .frame(maxWidth: .infinity)
        .padding()
        .padding(.leading, 10)
        .background(
            overlay
        ) //: background
    } //: body
} //: TasksTile

extension TasksTile {
    var checkBoxButton: some View {
        Button(action: {
            completed.toggle()
        }, label: {
            CheckBoxView(completed: completed)
        })
    }
    
    var taskName: some View {
        Text(task!.name)
            .font(.headline)
            .fontWeight(.bold)
            .lineLimit(2)
    }
    
    var taskClassInfo: some View {
        Text(classInfo.title)
            .font(.caption)
    }
    
    var dueDate: some View {
        HStack {
            Image(systemName: "clock.arrow.circlepath")
                .font(.system(size: 10))
                .fontWeight(.semibold)
            
            Text("Today, " + Date.now.formatted(.dateTime.day().month()))
                .font(.caption)
                .fontWeight(.semibold)
        }
    }
    
    var overlay: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.app.secondary)
            .shadow(color: Color.primary.opacity(0.2), radius: 3, x: 0, y: 2)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .fill(classInfo.color.color)
                    .frame(width: 15)
                    .offset(x: -185, y: 0)
                    .overlay {
                        Rectangle()
                            .fill(classInfo.color.color)
                            .frame(width: 9)
                            .offset(x: -179, y: 0)
                    } //: Rectangle Overlay
            } //: RoundedRect Overlay
    } //: overlay
    
    var noAssignments: some View {
        HStack {
            Text("No assignments soon!!")
                .font(.headline)
            .fontWeight(.bold)
            
            Spacer()
        }
    }
} //: extension

struct TasksTile_Previews: PreviewProvider {
    static var previews: some View {
        TasksTile(task:
                    Task(
                        classInfo:
                            Class(
                                title: "AP STATISTICS: 309-1",
                                color: .red),
                        name: "Homework #6 Section 1.3: #114, 121, 122, 123-126",
                        description: "",
                        completed: false,
                        dueDate: Date.now), completed: true, classInfo: Class(
                            title: "AP STATISTICS: 309-1",
                            color: .red))
        .padding()
    }
}
