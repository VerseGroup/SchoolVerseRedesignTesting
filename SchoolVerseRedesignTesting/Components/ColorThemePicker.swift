//
//  ColorThemePicker.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/25/22.
//

import SwiftUI

struct ColorThemePicker: View {
    @ObservedObject var userRepo : UserRepository = UserRepository()
    @State var colors : [AccentColor] = [.blue, .cyan, .pink, .purple]
    
    @State var selection: Int
    
    var body: some View {
        HStack (spacing: 35) {
            ForEach(0..<colors.count, id: \.self) { index in
                VStack {
                    Circle()
                        .foregroundStyle(colors[index].color.gradient)
                        .frame(width: 50)
                    
                    Text(colors[index].description)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .fontWeight(self.selection == index ? .bold : .light)
                }
                .onTapGesture {
                    selection = index
                    userRepo.changeAccent(color: colors[index])
                }
            }
        }
        .padding(25)
        .padding(.horizontal)
        .glass()
    }
}

struct ColorThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorThemePicker(selection: 3)
    }
}
