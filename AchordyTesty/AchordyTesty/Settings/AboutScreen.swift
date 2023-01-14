//
//  AboutScreen.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import Foundation
import SwiftUI

struct AboutScreen: View {
    var body: some View {
        HStack {
            Spacer().frame(width: 20.0)
            VStack {
                Spacer()
                HStack {
                    Spacer().frame(width: 10.0)
                    VStack {
                        Image("icon_small")
                            .frame(width: 80.0, height: 80.0)
                            .cornerRadius(14.0)
                            .shadow(color: Theme.shadowColor, radius: 38.0, x: 0, y: 0)
                        Spacer().frame(height: 30)
                        Text("Achordy is developed for musicians.\n---\nEasy for beginner!\nRock-solid precision!\nYour super tempo master!")
                            .multilineTextAlignment(.center)
                            .lineSpacing(6.0)
                    }
                    Spacer().frame(width: 8.0)
                }
                .foregroundColor(Theme.grayColorA)
                Spacer()
                HStack {
                    Text("My Github:").foregroundColor(Theme.grayColorA)
                    Link("@batinay1337", destination: URL(string: "https://github.com/batinay1337")!)
                }
                Spacer().frame(height: 6.0)
                HStack {
                    Text("Contact me:").foregroundColor(Theme.grayColorA)
                    Link("batinayunsel@gmail.com", destination: URL(string: "mailto://batinayunsel@gmail.com")!)
                }
                Spacer().frame(height: 20.0)
            }
            .font(Font.system(size: 14))
            Spacer().frame(width: 20.0)
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .navigationTitle("About")
    }
}

struct AboutScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutScreen()
    }
}
