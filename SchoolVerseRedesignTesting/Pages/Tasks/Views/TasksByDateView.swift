//
//  TasksByDateView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/18/22.
//

import SwiftUI

struct TasksByDateView: View {
    @ObservedObject var vm: TasksViewModel = TasksViewModel()

    var body: some View {
        VStack {
            past
            
            todayTomorrow
            
            upcoming
        }
    }
}

extension TasksByDateView {
    var past: some View {
        VStack {
            DisclosureGroup {
                TasksTile(task: Task(classInfo: vm.userRepo.physics, name: "2. MacGyver challenge 2", description: "", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.physics)
                    .padding(.horizontal, 5)
                    .padding(.top, 2)
                    .padding(.bottom, 7)
                
                TasksTile(task: Task(classInfo: vm.userRepo.english, name: "R&A Circle to 109", description: "", completed: true, dueDate: Date.now), completed: true, classInfo: vm.userRepo.english)
                    .padding(.horizontal, 5)
                    .padding(.top, 2)
                    .padding(.bottom, 7)
            } label: {
                HeaderLabel(name: "Past")
            }
            .padding(.horizontal)
            .padding(5)
            .tint(Color.white)
        }
    }
    
    var todayTomorrow: some View {
        VStack {
            DisclosureGroup {
                TasksTile(task: Task(classInfo: vm.userRepo.calcBC, name: "p.394 # 22, 31 and p.A50 #6, 15, 26 and watch Int. by Parts video up to 14:30 by Hackley alum George Wangensteen", description: "", completed: true, dueDate: Date.now), completed: true, classInfo: vm.userRepo.calcBC)
                    .padding(.horizontal, 5)
                    .padding(.top, 2)
                    .padding(.bottom, 7)
                
                TasksTile(task: Task(classInfo: vm.userRepo.english, name: "1) R&A Circle to 137 // 2) GC Post - Circle to 137 // 3) CLASS TEAM NAME!!", description: "", completed: true, dueDate: Date.now), completed: true, classInfo: vm.userRepo.english)
                    .padding(.horizontal, 5)
                    .padding(.top, 2)
                    .padding(.bottom, 7)
            } label: {
                HeaderLabel(name: "Today / Tommorrow")
                
            }
            .padding(.horizontal)
            .padding(5)
            .tint(Color.white)
        }
    }
    
    var upcoming: some View {
        VStack {
            DisclosureGroup {
                TasksTile(task: Task(classInfo: vm.userRepo.stats, name: "Chapter 1 Test", description: "Chapter 1 Test", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.stats)
                    .padding(.horizontal, 5)
                    .padding(.top, 2)
                    .padding(.bottom, 7)
                
                TasksTile(task: Task(classInfo: vm.userRepo.stats, name: "Homework #7 - Optional Practice Chapter 1 Practice Test", description: "Homework #7 - Optional Practice Chapter 1 Practice Test", completed: true, dueDate: Date.now), completed: true, classInfo: vm.userRepo.stats)
                    .padding(.horizontal, 5)
                    .padding(.top, 2)
                    .padding(.bottom, 7)
                
            } label: {
                HeaderLabel(name: "Upcoming")
            }
            .padding(.horizontal)
            .padding(5)
            .tint(Color.white)
        }
    }
}

struct TasksByDateView_Previews: PreviewProvider {
    static var previews: some View {
        TasksByDateView()
    }
}
