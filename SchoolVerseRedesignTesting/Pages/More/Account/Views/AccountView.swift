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
            Color.app.screen.ignoresSafeArea()
            
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
            
            List {
                Picker(selection: $vm.selectedIndex, content: {
                    Text(vm.userColors[0].name)
                    Text(vm.userColors[1].name)
                    Text(vm.userColors[2].name)
                    Text(vm.userColors[3].name)
                }, label: {
                    Text("Choose Your Accent Color")
                })
                .pickerStyle(.inline)
                
                Picker("Choose you accent color", selection: $vm.selectedIndex) {
                    Text(vm.userColors[0].name)
                    Text(vm.userColors[1].name)
                    Text(vm.userColors[2].name)
                    Text(vm.userColors[3].name)
                }
                .pickerStyle(.inline)
            }
        }
    }
}



struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
