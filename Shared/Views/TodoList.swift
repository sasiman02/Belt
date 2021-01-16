//
//  List.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/11.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var user: User
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TodoRow()
                    TodoRow()
                    TodoRow()
                    TodoRow()
                    TodoRow()
                    TodoRow()
                }
            }
            .navigationBarTitle("김현수의 이수 목록")
            .toolbar(content: {
                Button(action: { }) {
                    Image(systemName: "plus.circle")
                }
            })
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .top, endPoint: .bottom))
        }
        
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
