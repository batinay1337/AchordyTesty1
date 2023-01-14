//
//  TunerSettingsScreen.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//



import SwiftUI

struct TunerSettingsScreen: View {
    @State var isAutoTunerEnable: Bool = TunerSettingsListItem.autoTuner()
    private let listData: [TunerSettingsListItem] = [
        .autoTuning,
    ]
    var body: some View {
        VStack {
            List {
                Section {
                    ForEach(listData, id: \.self) { item in
                        HStack{
                            Image(systemName: item.icon())
                            Text(item.title())
                            Spacer()
                            Toggle("", isOn: $isAutoTunerEnable)
                                .toggleStyle(SwitchToggleStyle())
                                .tint(Theme.blackColor)
                        }
                        .onChange(of: isAutoTunerEnable) { newValue in
                            item.save(newValue: newValue)
                        }
                    }
                }
            }
        }
        .onAppear {
            isAutoTunerEnable = TunerSettingsListItem.autoTuner()
        }
        .navigationTitle("Tuner Settings")
    }
}

struct TunerSettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TunerSettingsScreen()
    }
}
