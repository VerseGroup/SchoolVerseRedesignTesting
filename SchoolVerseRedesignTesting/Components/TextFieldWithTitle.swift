//
//  TextFieldWithTitle.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct TextFieldWithTitle: View {
    @State var placeholder: String
    @State var info: String
    
    var body: some View {
        HStack {
            Text(placeholder)
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Text(info)
                .font(.headline)
                .fontWeight(.medium)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.app.secondary)
        )
    }
}

struct TextFieldWithTitle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextFieldWithTitle(placeholder: "Username", info: "danielsp18")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            TextFieldWithTitle(placeholder: "Username", info: "danielsp18")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
