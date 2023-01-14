//
//  MicrophoneAccessAlert.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import SwiftUI

func MicrophoneAccessAlert() -> Alert {
    Alert(
        title: Text("No microphone access"),
        message: Text(
            """
            Please grant microphone access in the Settings app in the "Privacy ⇾ Microphone" section.
            """
        )
    )
}
