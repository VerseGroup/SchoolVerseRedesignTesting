//
//  LinkedAccountsView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/26/22.
//

import SwiftUI

struct LinkedAccountsView: View {
    
    @ObservedObject var userRepo: UserRepository = UserRepository()
    
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            ScrollView {
                VStack{
                    schoology
                    
                    veracross
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
            .navigationTitle("Linked Accounts")
            .toolbarColorScheme(.dark, for: .navigationBar)
            //.toolbarBackground(.visible, for: .navigationBar)
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
                    .padding(15)
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
                    .padding(15)
            })
        }
    }
}


struct LinkedAccountsView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedAccountsView()
    }
}
