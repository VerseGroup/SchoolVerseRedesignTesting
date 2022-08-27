//
//  NavigationLinkLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct NavigationLinkLabel: View {
    @State var name: String
    
    var body: some View {
        HStack {
            Text(name)
                .fontWeight(.bold)
                .font(.title2)
                .padding()
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.headline)
                .padding()
        }
        .foregroundColor(Color.app.text)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.app.secondary)
        )
    }
}

struct NavigationLinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationLinkLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            NavigationLinkLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
