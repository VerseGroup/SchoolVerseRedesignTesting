//
//  HeaderLabel.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct HeaderLabel: View {
    @State var name: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
        }
        .padding(7)
    }
}

struct HeaderLabel_Previews: PreviewProvider {
    static var previews: some View {
        HeaderLabel(name: "Description")
    }
}
