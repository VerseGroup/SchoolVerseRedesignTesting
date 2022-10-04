//
//  TaintedGlass.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/2/22.
//

import SwiftUI

struct TaintedGlass: ViewModifier {
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(userRepo.accent.color)
                    .opacity(0.3)
                    .background(
                        userRepo.accent.color
                            .opacity(0.005)
                            .blur(radius: 10)
                    )
            )
    }
}

extension View {
    func taintedGlass() -> some View {
        modifier(TaintedGlass())
    }
}
