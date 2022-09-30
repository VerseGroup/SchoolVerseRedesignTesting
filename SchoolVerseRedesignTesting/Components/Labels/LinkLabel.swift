//
//  LinkLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct LinkLabel: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
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
        .foregroundColor(Color.accent.cyan)
        .glass()
    }
}

struct LinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        LinkLabel(name: "SchoolVerse by VerseGroup, LLC", link: "https://www.versegroup.tech")
            .previewLayout(.sizeThatFits)
            .padding(30)
    }
}
