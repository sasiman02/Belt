//
//  ContentView.swift
//  Shared
//
//  Created by 김현수 on 2021/01/05.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    @EnvironmentObject var user: User
    enum Tab {
        case featured
        case list
        case setting
    }
    
    var body: some View {
        if user.name == "" {
            Init()
        }
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
            
            Setting()
                .tabItem {
                    Label("설정", systemImage: "gear")
                }
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(User())
    }
}
