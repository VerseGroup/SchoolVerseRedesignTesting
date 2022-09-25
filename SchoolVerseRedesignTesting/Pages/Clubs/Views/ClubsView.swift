//
//  ClubsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/17/22.
//

import SwiftUI

struct ClubsView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    var body: some View {
        ZStack {
            Color.app.screen
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 30) {
                    Image(systemName: "gear")
                        .font(.system(size: 200))
                        .foregroundStyle(userRepo.accent.color.gradient)
                    
                    Text("Coming Soon...")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(userRepo.accent.color)
                    
                    Spacer()
                        .frame(height: 75)
                }
            }
            .navigationTitle("Clubs")
        }
    }
}

struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
    }
}
