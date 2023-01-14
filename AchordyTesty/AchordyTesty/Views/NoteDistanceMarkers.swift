//
//  NoteDistanceMarkers.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//

import SwiftUI

struct NoteDistanceMarkers: View {
    var body: some View {
        HStack {
            ForEach(0..<25) { index in
                Rectangle()
                    .frame(width: 1, height: tickSize(forIndex: index).height)
                    .foregroundColor(Color(0x000000 as! CGColor))
                    .inExpandingRectangle()
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .alignmentGuide(.leading) { dimensions in
            dimensions[VerticalAlignment.center]
        }
    }

    private func tickSize(forIndex index: Int) -> NoteTickSize {
        if index == 12 {
            return .large
        } else if [2, 7, 17, 22].contains(index) {
            return .medium
        } else {
            return .small
        }
    }
}

enum NoteTickSize {
    case small, medium, large
    var height: CGFloat {
        switch self {
        case .small:
            return 20
        case .medium:
            return 45
        case .large:
            return 68
        }
    }
}

extension View {
    func inExpandingRectangle() -> some View {
        ZStack {
            Rectangle().foregroundColor(.clear)
            self
        }
    }
}

struct NoteDistanceMarkers_Previews: PreviewProvider {
    static var previews: some View {
        NoteDistanceMarkers().previewLayout(.sizeThatFits)
    }
}
