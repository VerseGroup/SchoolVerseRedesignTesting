//
//  SportsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct SportsView: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    @State var selection: Int = 0
    
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
                        Text("My Sports").tag(0)
                        Text("All Sports").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if selection == 0 {
                        MySportsView()
                    } else { // selection == 1
                        AllSportsView()
                    }
                }
            }
            .navigationTitle("Sports")
        }
    }
}

struct SportsView_Previews: PreviewProvider {
    static var previews: some View {
        SportsView()
    }
}
