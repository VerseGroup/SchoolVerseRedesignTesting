//
//  CalendarViewBuilder.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/2/22.
//

import SwiftUI

struct CalendarViewBuilder<Content: View>: View {
    @ObservedObject var vm: DatePickerViewModel = DatePickerViewModel()
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            DatePickerView()
            
            Spacer()
                .frame(height: 25)
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.clear)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 20)
                    
                    content
                }
            }
            .heavyGlass()
            .ignoresSafeArea()
            
                
        }
    }
}

struct CalendarViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            CalendarViewBuilder {
                Text("Hi")
            }
        }
    }
}
