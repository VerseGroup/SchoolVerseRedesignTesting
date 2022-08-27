//
//  ParagraphLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct ParagraphLabel: View {
    
    @State var name: String
    
    var body: some View {
        Text(name)
            .fontWeight(.semibold)
            .font(.subheadline)
            .padding()
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.app.secondary)
            )
    }
}

struct ParagraphLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ParagraphLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            ParagraphLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
