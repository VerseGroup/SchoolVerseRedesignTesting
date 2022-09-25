//
//  TasksByClassView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/18/22.
//

import SwiftUI

struct TasksByClassView: View {
    @ObservedObject var vm: TasksViewModel = TasksViewModel()
    
    var body: some View {
        VStack {
            physics
            
            calcBC
            
            stats
            
            english
            
            jazzCombos
        }
    }
}

extension TasksByClassView {
    var physics: some View {
        DisclosureGroup {
            TasksTile(task: Task(classInfo: vm.userRepo.physics, name: "3. MacGyver challenge 3", description: "", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.physics)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
        } label: {
            HeaderLabel(name: vm.userRepo.physics.title)
        }
        .padding(.horizontal)
        .padding(5)
        .tint(Color.app.text)
    }
    
    var calcBC: some View {
        DisclosureGroup {
            TasksTile(task: Task(classInfo: vm.userRepo.calcBC, name: "p.394 # 22, 31 and p.A50 #6, 15, 26 and watch Int. by Parts video up to 14:30 by Hackley alum George Wangensteen", description: "", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.calcBC)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
            
            TasksTile(task: Task(classInfo: vm.userRepo.calcBC, name: "p.387 #1, 2, 5, 7, 9, 10, 13, 31", description: "", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.calcBC)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
        } label: {
            HeaderLabel(name: vm.userRepo.calcBC.title)
        }
        .padding(.horizontal)
        .padding(5)
        .tint(Color.app.text)
    }
    
    var stats: some View {
        DisclosureGroup {
            TasksTile(task: Task(classInfo: vm.userRepo.stats, name: "Chapter 1 Test", description: "Chapter 1 Test", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.stats)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
            
            TasksTile(task: Task(classInfo: vm.userRepo.stats, name: "Homework #7 - Optional Practice Chapter 1 Practice Test", description: "Homework #7 - Optional Practice Chapter 1 Practice Test", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.stats)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
        } label: {
            HeaderLabel(name: vm.userRepo.stats.title)
        }
        .padding(.horizontal)
        .padding(5)
        .tint(Color.app.text)
    }
    
    var english: some View {
        DisclosureGroup {
            TasksTile(task: Task(classInfo: vm.userRepo.english, name: "1) R&A Circle to 137 // 2) GC Post - Circle to 137 // 3) CLASS TEAM NAME!!", description: "", completed: false, dueDate: Date.now), completed: false, classInfo: vm.userRepo.english)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
        } label: {
            HeaderLabel(name: vm.userRepo.english.title)
        }
        .padding(.horizontal)
        .padding(5)
        .tint(Color.app.text)
    }
    
    var jazzCombos: some View {
        DisclosureGroup {
            TasksTile(completed: false, classInfo: vm.userRepo.jazz)
                .padding(.horizontal, 5)
                .padding(.top, 2)
                .padding(.bottom, 7)
        } label: {
            HeaderLabel(name: vm.userRepo.jazz.title)
        }
        .padding(.horizontal)
        .padding(5)
        .tint(Color.app.text)
    }
}

struct TasksByClassView_Previews: PreviewProvider {
    static var previews: some View {
        TasksByClassView()
    }
}
