//
//  LinkLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct LinkLabel: View {
    
    @State var name: String
    @State var link: String
    
    var body: some View {
        HStack {
            Spacer()
            
            Image(systemName: "link")
                .font(.headline)
            
            Link(name, destination: URL(string: link)!)
                .font(.headline)
                .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .padding()
        .foregroundColor(Color.blue)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.app.secondary)
        )
    }
}

struct LinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LinkLabel(name: "SchoolVerse by VerseGroup, LLC", link: "https://www.versegroup.tech")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            LinkLabel(name: "SchoolVerse by VerseGroup, LLC", link: "https://www.versegroup.tech")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
}
