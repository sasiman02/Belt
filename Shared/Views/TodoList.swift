//
//  List.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/11.
//

import SwiftUI

struct TodoList: View {
    var body: some View {
        
        List {
            Text("할 일이 있어 나는.")
            Text("할 일이 있어 나는.")
            Text("할 일이 있어 나는.")
            Text("할 일이 있어 나는.")
            Text("할 일이 있어 나는.")
        }
        .navigationBarTitle("이수 목록")
    }
    
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
