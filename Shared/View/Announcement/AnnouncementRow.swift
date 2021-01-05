//
//  AnnouncementRow.swift
//  Belt
//
//  Created by 김현수 on 2021/01/05.
//

import SwiftUI

struct AnnouncementRow: View {
    var body: some View {
        HStack {
            Text("번호")
                .padding()
            Text("제목")
                .padding()
            Text("날짜")
                .padding()
        }
    }
}

struct AnnouncementRow_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementRow()
    }
}
