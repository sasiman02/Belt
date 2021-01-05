//
//  AnnouncementList.swift
//  Belt
//
//  Created by 김현수 on 2021/01/05.
//

import SwiftUI

struct AnnouncementList: View {
    
    
    var body: some View {
        NavigationView {
            List {
                AnnouncementRow()
                AnnouncementRow()
                AnnouncementRow()
                AnnouncementRow()
                AnnouncementRow()
                AnnouncementRow()
            }
            .navigationTitle("학사 공지")
        }
    }
}

struct AnnouncementList_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementList()
    }
}
