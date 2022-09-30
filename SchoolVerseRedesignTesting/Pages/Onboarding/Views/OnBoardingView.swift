//
//  OnBoardingView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/28/22.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            VStack {
                Text("Hello, \n\n Welcome to SchoolVerse")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 175)
                
                Button {
                    
                } label: {
                    Text("Begin")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 60)
                        .glassCard()
                }
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
