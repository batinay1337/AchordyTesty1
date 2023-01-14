//
//  SettingsScreen.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

//
//  SecondView.swift
//  XMetro
//
//  Created by Yue Zhang on 2022/7/7.
//

import Foundation
import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        HStack {
            VStack {
                Text("Achordy is developed by @batinay1337")
                Link("Github", destination: URL(string: "https://github.com/batinay1337")!)
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
            }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .navigationTitle("About")
    }
}

struct FouthView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
