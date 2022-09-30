//
//  CheckBoxView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 9/22/22.
//

import SwiftUI

struct CheckBoxView: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    @State var completed: Bool
    
    var body: some View {
        Image(systemName: completed ? "checkmark.circle.fill" : "circle")
            .foregroundColor(Color.white)
            .font(.system(size: 30))
            .padding(.leading, 5)
            .foregroundColor(Color.app.text)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView(completed: true)
            .previewLayout(.sizeThatFits)
        
        CheckBoxView(completed: false)
            .previewLayout(.sizeThatFits)
    }
}
