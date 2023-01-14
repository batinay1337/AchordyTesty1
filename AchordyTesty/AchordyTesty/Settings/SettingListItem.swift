//
//  SettingListItem.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import SwiftUI

enum SettingListItem: Hashable {
    case tuner
    case about
    case update
    
    func icon() -> String {
        switch self {
        
        case .tuner: return "tuningfork"
        case .about: return "info.circle"
        case .update: return "star.circle"
        }
    }
    
    func title() -> String {
        switch self {
        
        case .tuner: return "Tuner settings"
        case .about: return "About Ting"
        case .update: return "Rate us"
        }
    }
    
    @ViewBuilder func destination() -> some View {
        switch self {
        case .tuner: TunerSettingsScreen()
        case .about: AboutScreen()
        case .update: EmptyView()
        }
    }
    
    @ViewBuilder func itemView() -> some View {
        if self == .update {
            HStack{
                Image(systemName: icon())
                Text(title()).font(.system(size: 16))
                Spacer()
                Button {
                    if let url = URL(string: "https://apps.apple.com/app/6443442078") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Text("App Store")
                        .frame(maxWidth: 94.0, maxHeight: 30.0)
                        .font(.system(size: 14))
                        .background(Theme.grayColorF1.cornerRadius(15.0))
                        .foregroundColor(Theme.blackColor)
                }
                .buttonStyle(.plain)
            }
        } else {
            NavigationLink(destination: destination()) {
                HStack{
                    Image(systemName: icon())
                    Text(title()).font(.system(size: 16))
                }
            }
        }
    }
}
