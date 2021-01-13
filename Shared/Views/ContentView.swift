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
                    Image("mainPage1Btn")
                        .resizable()
                        
                }
                .tag(Tab.featured)
            
            AnnouncementList()
                .tabItem {
                    Image("mainPage2Btn")
                        .resizable()
                }
                .tag(Tab.list)
            
            Setting()
                .tabItem {
                    Image("settingPageBtn")
                        .resizable()
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
