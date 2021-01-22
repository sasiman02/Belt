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
//        if user.name == "" {
//            Init()
//        }
        TabView(selection: $selection) {
            TodoList()
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("이수 목록")
                }
                .tag(Tab.featured)
                .environmentObject(user)
            
            AnnouncementList()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("학사 공지")
                }
                .tag(Tab.list)
                .environmentObject(user)
            
            Setting()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("설정")
                }
                .tag(Tab.setting)
                .environmentObject(user)
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
