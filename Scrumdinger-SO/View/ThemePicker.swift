//
//  ThemePicker.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 05/12/22.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
                    .foregroundColor(theme.accentColor)
            }
        }
        .pickerStyle(.inline)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.red))
    }
}
