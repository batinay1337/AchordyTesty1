//
//  Color+MusicalDistance.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import SwiftUI

extension Color {
    /// Color used to display a musical distance that is imperceptible (aka "in tune").
    static var imperceptibleMusicalDistance: Color { .green }
    /// Color used to display a musical distance that is perceptible (aka "out of tune").
    static var perceptibleMusicalDistance: Color { .red }
}
