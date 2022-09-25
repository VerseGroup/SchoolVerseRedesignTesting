//
//  Task.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/17/22.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    var id: UUID = UUID()
    var classInfo: Class
    var name: String
    var description: String
    var completed: Bool
    var dueDate: Date
    var color: Color?
}
