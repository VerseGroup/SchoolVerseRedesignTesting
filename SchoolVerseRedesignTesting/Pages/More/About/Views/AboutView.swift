//
//  AboutView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 8/25/22.
//

// TODO: Create updated message for purpose statement and schoolverse description

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color.app.screen.ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    aboutView()
                    
                    sourceCodeView()
                    
                    Spacer()
                        .frame(height: 75)
                }
            }
            .navigationTitle("About")
        }
    }
}

extension AboutView {
    private func aboutView() -> some View {
        Group {
            TitleLabel(name: "SchoolVerse by VerseGroup, LLC")
                .padding(10)
            
            HeaderLabel(name: "Founders")
            
            SubtitleLabel(name: "By Paul Evans, Malcolm Krolick, \n Daniel Shola-Philips, and Steven Yu")
                .padding(10)
            
            HeaderLabel(name: "Purpose Statement")
            
            ParagraphLabel(name:
                "\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu luctus tortor. Ut neque metus, iaculis a blandit ac, mollis et magna. In hac habitasse platea dictumst. Nullam sodales enim orci, ut posuere tellus commodo sit amet. Fusce ultricies mattis ante, id consequat lacus. Praesent facilisis commodo tortor."
            )
            .padding(10)
            
            LinkLabel(name: "Click to visit our website", link: "https://www.versegroup.tech")
                .padding(10)
        }
    }
}

extension AboutView {
    private func sourceCodeView() -> some View {
        Group {
            HeaderLabel(name: "SchoolVerse Description")
            
            ParagraphLabel(name:
                "\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu luctus tortor. Ut neque metus, iaculis a blandit ac, mollis et magna. In hac habitasse platea dictumst. Nullam sodales enim orci, ut posuere tellus commodo sit amet. Fusce ultricies mattis ante, id consequat lacus. Praesent facilisis commodo tortor."
            )
            .padding(10)
            
            HeaderLabel(name: "Our Repositories")
            
            LinkLabel(name: "Frontend Repository", link: "https://github.com/VerseGroup/SchoolVerseTesting")
                .padding(10)
            
            LinkLabel(name: "Backend Repository", link: "https://github.com/VerseGroup/SchoolVerse-webscraper")
                .padding(10)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
