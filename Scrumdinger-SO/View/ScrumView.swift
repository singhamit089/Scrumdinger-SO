//
//  ScrumView.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 01/12/22.
//

import SwiftUI

struct ScrumView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.colorValue)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button {
                print("---- plus -----")
            } label: {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumViewPreview: PreviewProvider {
    static var scrums = DailyScrum.sampleData
    static var previews: some View {
        NavigationView {
            ScrumView(scrums: .constant(scrums))
        }
    }
}
