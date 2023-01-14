//
//  ModifierPreference.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//


enum ModifierPreference: Int, Identifiable, CaseIterable {
    case preferSharps, preferFlats

    var toggled: ModifierPreference {
        switch self {
        case .preferSharps:
            return .preferFlats
        case .preferFlats:
            return .preferSharps
        }
    }

    var id: Int { rawValue }
}
