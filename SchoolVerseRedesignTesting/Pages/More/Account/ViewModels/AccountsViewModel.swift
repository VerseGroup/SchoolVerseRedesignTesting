//
//  AccountsViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation
import SwiftUI

class AccountsViewModel: ObservableObject {   
    @Published var userColors: [UserColor] = [
        UserColor(name: "Blue", color: Color.accent.blue),
        UserColor(name: "Cyan", color: Color.accent.cyan),
        UserColor(name: "Pink", color: Color.accent.pink),
        UserColor(name: "Purple", color: Color.accent.purple)
    ]
    
    @Published var selectedIndex: Int = 0
    
}
