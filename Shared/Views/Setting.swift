//
//  Setting.swift
//  Belt (iOS)
//
//  Created by 김현수 on 2021/01/12.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    SettingRow()
                    SettingRow()
                    SettingRow()
                    SettingRow()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .navigationBarTitle("설정")
                .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .top, endPoint: .bottom))
            }
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
