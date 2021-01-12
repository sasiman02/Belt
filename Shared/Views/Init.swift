//
//  Init.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/11.
//

import SwiftUI

struct Init: View {
    @EnvironmentObject var user: User
    @State var tag: Int? = nil
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(
                    destination: ContentView(),
                    tag: 1,
                    selection: self.$tag,
                    label: {EmptyView()})
                TextField("사용자 이름을 입력하시오", text: $user.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {self.tag = 1}, label: {
                    Text("Button")
                })
            }
        }
    }
}

struct Init_Previews: PreviewProvider {
    static var previews: some View {
        Init()
            .environmentObject(User())
    }
}
