//
//  UserColor.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation
import SwiftUI

struct UserColor: Identifiable {
    var name: String
    var id: String {
        return self.name
    }
    var color: Color
    
}
