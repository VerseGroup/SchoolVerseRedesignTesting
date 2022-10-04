//
//  MenuViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/1/22.
//

import SwiftUI

class MenuViewModel: ObservableObject {
    @Published var menuRepo: MenuRepository = MenuRepository()
}

