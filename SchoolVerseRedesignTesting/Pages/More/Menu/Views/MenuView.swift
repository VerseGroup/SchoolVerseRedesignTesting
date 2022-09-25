//
//  MenuView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    @State var selection: Int = 1
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(userRepo.accent.color)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        ZStack {
            Color.app.screen.ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Picker("", selection: $selection) {
                        Text("Breakfast").tag(0)
                        Text("Lunch").tag(1)
                        Text("Dinner").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if selection == 0 {
                        BreakfastView()
                    } else if selection == 2 {
                        DinnerView()
                    } else { // selection = 1
                        LunchView()
                    }
                    
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
