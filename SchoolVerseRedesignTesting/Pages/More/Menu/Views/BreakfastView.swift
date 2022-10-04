//
//  BreakfastView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/24/22.
//

import SwiftUI

struct BreakfastView: View {
    @ObservedObject var vm: MenuViewModel = MenuViewModel()
    
    var body: some View {
        CalendarViewBuilder {
            DayMenuView(menu: vm.menuRepo.menuNow, mealType: "Breakfast")
        }
    }
}

struct BreakfastView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            BreakfastView()
                .preferredColorScheme(.dark)
        }
    }
}
