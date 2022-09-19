//
//  TasksViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/18/22.
//

import Foundation
import SwiftUI

class TasksViewModel: ObservableObject {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
//    @Published var circle28 =
//    Task(
//        classInfo: userRepo.english,
//        name: "R&A Circle pp 1-28",
//        description:
//        """
//        * That's it. That's the HW.
//
//        * Strive, though, as you read to keep in mind as much as you can of our opening discussions & materials.
//        """,
//        completed: true,
//        dueDate: Date.now,
//        color: userRepo.english.color.color)
    
}
