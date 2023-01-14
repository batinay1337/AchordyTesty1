//
//  MatchedNoteFrequency.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import SwiftUI

struct MatchedNoteFrequency: View {
    let frequency: Frequency
    var body: some View {
        Text(
            frequency.localizedString()
        )
        .font(.system(size: 14.0))
        .foregroundColor(
            Color(hex: 0x000000, alpha: 0.2)
        )
    }
}

struct MatchedNoteFrequency_Previews: PreviewProvider {
    static var previews: some View {
        MatchedNoteFrequency(frequency: 440.0)
            .previewLayout(.sizeThatFits)
    }
}
