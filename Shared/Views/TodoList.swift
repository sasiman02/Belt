//
//  List.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/11.
//

import SwiftUI

struct TodoList: View {
    var body: some View {
        
        VStack(alignment: .center){
            Group {
                Text("to-do list.to-do list.to-do list.to-do list.")
                Text("to-do list.to-do list.to-do list.to-do list.")
                Text("to-do list.to-do list.to-do list.to-do list.")
            }
            .foregroundColor(Color.white)
            .background(
                Image("checklist")
                    .resizable()
                    .frame(width: .infinity, height: 50, alignment: .center))
        }
        
        .navigationBarTitle("이수 목록")
    }
    
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
