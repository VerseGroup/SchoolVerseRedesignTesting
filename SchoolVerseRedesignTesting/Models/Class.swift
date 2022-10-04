//
//  Class.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation
import SwiftUI

struct Class {
    var id: UUID = UUID()
    var title: String
    var teacher: String?
    var room: String?
        
    var tasks: [Task]?
}
