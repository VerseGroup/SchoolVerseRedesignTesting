//
//  NavPlusButtonView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/6/22.
//

import SwiftUI

struct NavPlusButtonView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    var body: some View {
        Image(systemName: "plus")
            .foregroundColor(userRepo.accent.color)
            .font(.system(size:25))
            .padding(5)
            .padding(.horizontal, 5)
            .heavyGlass()
    }
}

struct NavPlusButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavPlusButtonView()
    }
}
