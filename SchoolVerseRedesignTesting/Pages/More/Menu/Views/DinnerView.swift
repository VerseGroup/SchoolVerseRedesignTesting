//
//  DinnerView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/24/22.
//

import SwiftUI

struct DinnerView: View {
    @ObservedObject var vm: MenuViewModel = MenuViewModel()
    
    var body: some View {
        CalendarViewBuilder {
            DayMenuView(menu: vm.menuRepo.menuNow, mealType: "Dinner")
        }
    }
}

struct DinnerView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            DinnerView()
                .preferredColorScheme(.dark)
        }
    }
}
