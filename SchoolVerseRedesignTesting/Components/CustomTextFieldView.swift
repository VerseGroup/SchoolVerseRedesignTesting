//
//  CustomTextFieldView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/6/22.
//

import SwiftUI

struct CustomTextFieldView: View {
    @State var placeholder: String
    @State var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.clear)
                    .frame(minWidth: 350)
            )
            .padding(.horizontal, 20)
            .glass()

    }
}

struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            CustomTextFieldView(placeholder: "Enter the name of your task", text: "")
                .padding()
        }
        .preferredColorScheme(.dark)
    }
}
