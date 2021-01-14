//
//  AnnouncementList.swift
//  Belt
//
//  Created by 김현수 on 2021/01/05.
//

import SwiftUI

struct AnnouncementList: View {
    
    var body: some View {
            List {
                AnnouncementRow(annoucement: Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1"))
                AnnouncementRow(annoucement: Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1"))
                AnnouncementRow(annoucement: Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1"))
                AnnouncementRow(annoucement: Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1"))
                AnnouncementRow(annoucement: Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1"))
                AnnouncementRow(annoucement: Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1"))
            }
            .navigationTitle("학사 공지")
    }
}

struct AnnouncementList_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementList()
    }
}
