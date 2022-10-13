//
//  CustomSegmentedPicker.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/12/22.
//

import SwiftUI

struct CustomSegmentedPicker: View {
    var meals : [MealType] = [.breakfast, .lunch, .dinner]
    @State var selection: MealType = .lunch
    
    @Namespace var animation
    
    var body: some View {
        HStack (spacing: 20) {
            ForEach (meals, id: \.self) { meal in
                Text(meal.name)
                    .fontWeight(.semibold)
                    .font(.headline)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 2)
                    .background (
                        ZStack {
                            if meal == selection {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.clear)
                                    .padding(25)
                                    .padding(.horizontal)
                                    .taintedGlass()
                                    .matchedGeometryEffect(id: "currentMeal", in: animation)
                            } //: if
                        } //: Zstack
                    ) //: background
                    .onTapGesture {
                        withAnimation {
                            selection = meal
                        }
                    }
            } //: ForEach
        } //: HStack
        .padding()
        .padding(.vertical, 5)
        .heavyGlass()
    } //: var body
} //: CustomSegmentedPicker

enum MealType {
    case breakfast
    case lunch
    case dinner
    
    var name: String {
        switch self {
        case .breakfast:
            return "Breakfast"
        case .lunch:
            return "Lunch"
        case .dinner:
            return "Dinner"
        }
    }
}
        

struct CustomSegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            CustomSegmentedPicker()
        }
        .preferredColorScheme(.dark)
    }
}
