//
//  AppThemeView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/25/22.
//

import SwiftUI

struct AppThemeView: View {
    @ObservedObject var vm: AccountsViewModel = AccountsViewModel()
    
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            ScrollView {
                VStack {
                    appColor
                    
                    //appIcon
                } //: VStack
            }//: Scroll View
            .navigationTitle("App Theme")
            .navigationBarTitleDisplayMode(.inline)
        } //: ZStack
    }
}

extension AppThemeView {
    var appColor: some View {
        Group {
            HeaderLabel(name: "Choose Your App Color")
                .padding(5)
            
            ColorThemePicker(selection: vm.accentSelection)
        }
    }
    
    var bgColor: some View {
        Group {
            HeaderLabel(name: "Choose Your Background Color")
                .padding(5)
            
            LightThemePicker(selection: vm.modeSelection)
        }
    }
    
    var appIcon: some View {
        Group {
            HeaderLabel(name: "Choose Your App Icon")
                .padding(5)
            
        }
    }
}

struct AppThemeView_Previews: PreviewProvider {
    static var previews: some View {
        AppThemeView()
    }
}
