//
//  NavMenuButtonView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/17/22.
//

import SwiftUI

struct NavMenuButtonView: View {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    var body: some View {
        Image(systemName: "line.horizontal.3.decrease")
            .foregroundColor(userRepo.accent.color)
            .font(.system(size:25))
            .padding()
            .padding(.leading)
    }
}

struct NavMenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavMenuButtonView()
            .previewLayout(.sizeThatFits)
    }
}
