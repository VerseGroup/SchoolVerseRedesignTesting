//
//  LunchView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/24/22.
//

import SwiftUI

struct LunchView: View {
    @ObservedObject var vm: MenuViewModel = MenuViewModel()
    
    var body: some View {
        CalendarViewBuilder {
            DayMenuView(menu: vm.menuRepo.menuNow, mealType: "Lunch")
        }
    }
}

struct LunchView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            LunchView()
                .preferredColorScheme(.dark)
        }
    }
}
