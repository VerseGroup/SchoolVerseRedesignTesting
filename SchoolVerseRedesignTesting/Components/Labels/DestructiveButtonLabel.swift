//
//  DestructiveButtonLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct DestructiveButtonLabel: View {
    @State var name: String
    
    var body: some View {
        Text(name)
            .fontWeight(.bold)
            .font(.headline)
            .foregroundColor(Color.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red)
            )
    }
}

struct DestructiveButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DestructiveButtonLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            DestructiveButtonLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
