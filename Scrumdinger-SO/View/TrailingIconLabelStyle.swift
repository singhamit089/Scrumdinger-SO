//
//  TrailingIconLabelStyle.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 01/12/22.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension  LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
