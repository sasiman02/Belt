//
//  ContentView.swift
//  Shared
//
//  Created by 김현수 on 2021/01/05.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            TodoList()
                .tabItem {
                    Label("이수 목록", systemImage: "star")
                }
                .tag(Tab.featured)
            
            AnnouncementList()
                .tabItem {
                    Label("학사 공지", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(User())
    }
}
