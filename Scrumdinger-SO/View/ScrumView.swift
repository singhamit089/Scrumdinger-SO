//
//  ScrumView.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 01/12/22.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.colorValue)
            }
        }
    }
}

struct ScrumViewPreview: PreviewProvider {
    static var scrums = DailyScrum.sampleData
    static var previews: some View {
        ScrumView(scrums: scrums)
    }
}
