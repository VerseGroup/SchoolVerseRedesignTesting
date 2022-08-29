//
//  MoreInfoCardView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct MoreInfoCardView: View, Identifiable {
    
    @State var imageName: String
    @State var name: String
    @State var id: UUID = UUID()
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: imageName)
                .font(.system(size: 85))
            
            Text(name)
                .font(.title2)
        }
        .foregroundColor(Color.app.secondary)
        .padding()
        .frame(width: 175, height: 200)
        .background(Color.accent.cyan)
        .cornerRadius(10)
        .shadow(color: Color.accent.cyan.opacity(0.3), radius: 5, x: 0, y: 5)
    }
}

struct MoreInfoCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MoreInfoCardView(imageName: "link.badge.plus", name: "Linking")
                .previewLayout(.sizeThatFits)
                .padding(30)
            
            MoreInfoCardView(imageName: "link.badge.plus", name: "Linking")
                .previewLayout(.sizeThatFits)
                .padding(30)
                .preferredColorScheme(.dark)
        }
    }
        
}
