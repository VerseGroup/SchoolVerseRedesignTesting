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
            ColorfulBackgroundView()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 30) {
                    Spacer()
                        .frame(height: 75)
                    
                    VStack (spacing: 25){
                        Image(systemName: "gear")
                            .font(.system(size: 200))
                            .foregroundColor(Color.white)
                        
                        Text("Coming Soon...")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    .padding(30)
                    .glassCard()
                    
                    Spacer()
                        .frame(height: 75)
                }
            }
            .navigationTitle("Clubs")
            .toolbarColorScheme(.dark, for: .navigationBar)
            //.toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
    }
}
