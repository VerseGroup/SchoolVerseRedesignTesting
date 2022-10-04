//
//  DatePickerView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/2/22.
//

import SwiftUI

struct DatePickerView: View {
    @ObservedObject var vm: DatePickerViewModel = DatePickerViewModel()
    @Namespace var animation
    
    var body: some View {
        HStack {
            Spacer()
            
            ForEach(vm.currentWeek, id: \.self) { day in
                VStack(spacing: 10) {
                    Text(vm.extractDate(date: day, format: "dd"))
                        .fontWeight(.semibold)
                    
                    Text(vm.extractDate(date: day, format: "EEE"))
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 8)
                        .opacity(vm.isToday(date: day) ? 1 : 0)
                }
                .foregroundColor(Color.white)
                .frame(width: 45, height: 95)
                .background(
                    ZStack{
                        if vm.isToday(date: day){
                            Capsule()
                                .fill(.clear)
                                .taintedGlass()
                                //.stroke(Color.white, lineWidth: 2)
                                .matchedGeometryEffect(id: "currentday", in: animation)
                        }
                    }
                )
                .onTapGesture {
                    withAnimation{
                        vm.currentDay = day
                    }
                }
                
                Spacer()
            } //: ForEach
        } //: HStack
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            DatePickerView()
        }
    }
}
