//
//  TitleLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct TitleLabel: View {
    
    @State var name: String
    
    var body: some View {
        Text(name)
            .fontWeight(.bold)
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.app.secondary)
            )
    }
}

struct TitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TitleLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            TitleLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
