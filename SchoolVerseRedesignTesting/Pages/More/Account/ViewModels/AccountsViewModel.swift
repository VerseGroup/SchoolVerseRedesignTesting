//
//  AccountsViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import Foundation
import SwiftUI

class AccountsViewModel: ObservableObject {
    @Published var userRepo: UserRepository = UserRepository()
    
    @Published var accentSelection: Int = 3
    @Published var modeSelection: Int = 0
    
}
