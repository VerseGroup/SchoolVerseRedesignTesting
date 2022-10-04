//
//  AccountView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct AccountView: View {
    @ObservedObject var vm: AccountsViewModel = AccountsViewModel()
    
    var body: some View {
        ZStack {
            ColorfulBackgroundView()
            
            ScrollView {
                VStack {
                    verseAccount
                    
                    linkedAccounts
                    
                    preferences
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
            .navigationTitle("Account")
        }
    }
}

extension AccountView {
    private var verseAccount: some View {
        Group {
            HeaderLabel(name: "VerseGroup Account")
            
            TextFieldWithTitle(placeholder: "Username", info: "danielsp18")
                .padding(.horizontal)
            
            TextFieldWithTitle(placeholder: "Password", info: ".........")
                .padding(.horizontal)
        }
    }
}


extension AccountView {
    private var linkedAccounts: some View {
        Group {
            HeaderLabel(name: "Linked Accounts")
            
            NavigationLink(destination: LinkedAccountsView(), label: {
                NavigationLinkLabel(name: "Linked Accounts")
                    .padding(10)
            })
        }
    }
}

extension AccountView {
    private var preferences: some View {
        Group {
            HeaderLabel(name: "Preferences")
            
            HeaderLabel(name: "Choose Your App Color")
                .padding(5)
            
            ColorThemePicker(selection: vm.accentSelection)
            
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
