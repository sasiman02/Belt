//
//  List.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/11.
//

import SwiftUI

struct TodoList: View {
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
            .navigationBarTitle("이수 목록")
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
