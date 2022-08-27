//
//  LinkedAccountsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct LinkedAccountsView: View {
    var body: some View {
        ZStack {
            Color.app.screen.ignoresSafeArea()
            
            ScrollView {
                VStack{
                    schoology
                    
                    veracross
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
            .navigationTitle("Linked Accounts")
        }
    }
}

extension LinkedAccountsView {
    private var schoology: some View {
        Group {
            HeaderLabel(name: "Schoology")
            
            TextFieldWithTitle(placeholder: "Username", info: "dshola-philips")
                .padding(.horizontal)
            
            TextFieldWithTitle(placeholder: "Password", info: ".........")
                .padding(.horizontal)
            
            Button(action: {}, label: {
                DestructiveButtonLabel(name: "Unlink Account")
                    .padding(10)
            })
        }
    }
}

extension LinkedAccountsView {
    private var veracross: some View {
        Group {
            HeaderLabel(name: "Veracross")
            
            TextFieldWithTitle(placeholder: "Username", info: "dshola-philips")
                .padding(.horizontal)
            
            TextFieldWithTitle(placeholder: "Password", info: ".........")
                .padding(.horizontal)
            
            Button(action: {}, label: {
                DestructiveButtonLabel(name: "Unlink Account")
                    .padding(10)
            })
        }
    }
}


struct LinkedAccountsView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedAccountsView()
    }
}
