//
//  TextFieldWithTitle.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct TextFieldWithTitle: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
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
        .foregroundColor(Color.white)
        .padding()
        .glass()
        
    }
}

struct TextFieldWithTitle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            TextFieldWithTitle(placeholder: "Username", info: "danielsp18")
                .previewLayout(.sizeThatFits)
            .padding(30)
        }
    }
}
