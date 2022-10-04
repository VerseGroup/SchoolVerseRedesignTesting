//
//  SportsViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/4/22.
//

import Foundation
import SwiftUI

class SportsViewModel: ObservableObject {
    @ObservedObject var sportsRepo: SportsRepository = SportsRepository()
}
