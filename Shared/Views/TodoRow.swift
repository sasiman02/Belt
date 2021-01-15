//
//  TodoRow.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/14.
//

import SwiftUI

struct TodoRow: View {
    var body: some View {
        ZStack {
            Image("checklist")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
            
            Text("해야할 것들이 있다.")
                .foregroundColor(Color.white)
        }
        .padding(.top, 10)
    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        TodoRow()
    }
}
