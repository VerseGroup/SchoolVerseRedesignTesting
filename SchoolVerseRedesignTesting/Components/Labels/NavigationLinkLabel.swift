//
//  NavigationLinkLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct NavigationLinkLabel: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
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
        .foregroundColor(Color.white)
        .glass()
    }
}

struct NavigationLinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            NavigationLinkLabel(name: "SchoolVerse by VerseGroup, LLC")
                .previewLayout(.sizeThatFits)
            .padding(30)
        }
    }
}
