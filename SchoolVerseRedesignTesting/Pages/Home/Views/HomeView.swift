//
//  HomeView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.app.screen
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 30) {
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                    
                    Text("Welcome to SchoolVerse")
                        .font(.largeTitle)
                }
            }
            .navigationTitle("Hello, Daniel")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
