//
//  AnnouncementRow.swift
//  Belt
//
//  Created by 김현수 on 2021/01/05.
//

import SwiftUI

struct AnnouncementRow: View {
    var annoucement: Announcement
    
    var body: some View {
        HStack {
            Text(String(annoucement.number))
                .padding()
            Text(annoucement.title)
                .padding()
            Text(annoucement.date)
                .padding()
        }
    }
}

struct AnnouncementRow_Previews: PreviewProvider {
    static var announcements = Announcement(number: 4444, classification: "test", link: "test.com", title: "test", date: "2021.1.1")
    static var previews: some View {
        AnnouncementRow(annoucement: announcements)
    }
}
