//
//  TunerData.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

struct TunerData {
    let pitch: Frequency
    let closestNote: ScaleNote.Match
}

extension TunerData {
    init(pitch: Float = 440) {
        self.pitch = Frequency(floatLiteral: Double(pitch))
        self.closestNote = ScaleNote.closestNote(to: self.pitch)
    }
}
