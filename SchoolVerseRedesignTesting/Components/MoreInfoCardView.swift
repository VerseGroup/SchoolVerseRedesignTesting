//
//  MoreInfoCardView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct MoreInfoCardView: View, Identifiable {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
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
        .foregroundColor(Color.white)
        .padding()
        .frame(width: 175, height: 200)
        .glassCard()
    }
}

struct MoreInfoCardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorfulBackgroundView()
            
            MoreInfoCardView(imageName: "link.badge.plus", name: "Linking")
                .previewLayout(.sizeThatFits)
            .padding(30)
        }
    }
        
}
