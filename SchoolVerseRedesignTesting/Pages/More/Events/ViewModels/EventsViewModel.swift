//
//  EventsViewModel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/3/22.
//

import Foundation
import SwiftUI

class EventsViewModel: ObservableObject {
    @Published var eventsRepo: EventsRepository = EventsRepository()
}
