//
//  NoteTicks.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import SwiftUI

struct NoteTicks: View {
    let tunerData: TunerData
    var body: some View {
        NoteDistanceMarkers().overlay(currentMarker())
    }
    
    @ViewBuilder func currentMarker() -> some View {
        CurrentNoteMarker(
            frequency: tunerData.pitch,
            distance: tunerData.closestNote.distance
        )
    }
}
