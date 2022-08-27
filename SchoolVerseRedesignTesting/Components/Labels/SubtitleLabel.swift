//
//  SubtitleLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct SubtitleLabel: View {
    
    @State var name: String
    
    var body: some View {
        Text(name)
            .fontWeight(.semibold)
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.center)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.app.secondary)
            )
    }
}

struct SubtitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SubtitleLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            SubtitleLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
