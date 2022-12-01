//
//  Theme.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 01/12/22.
//

import SwiftUI

enum Theme: String {
    case red
    case green
    case mint
    case cyan
    case blue
    case pink
    case indigo
    case orange
    case purple
    case teal
    case yellow
    
    var accentColor: Color  {
        switch self {
        case .orange, .teal, .yellow: return .black
        case .indigo, .purple: return .white
        case .red, .green, .mint, .cyan, .blue, .pink: return .gray
        }
    }
    var mainColor: Color {
        print("-------------------------")
        print("\(self.rawValue)")
        print("-------------------------")
        return Color.init(self.rawValue)
    }
    var colorValue: Color {
        switch self {
        case .red:
            return Color.red
        case .green:
            return Color.green
        case .mint:
            return Color.mint
        case .cyan:
            return Color.cyan
        case .blue:
            return Color.blue
        case .pink:
            return Color.pink
        case .indigo:
            return Color.indigo
        case .orange:
            return Color.orange
        case .purple:
            return Color.purple
        case .teal:
            return Color.teal
        case .yellow:
            return Color.yellow
        }
    }
}
