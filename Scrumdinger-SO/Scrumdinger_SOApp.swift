//
//  Scrumdinger_SOApp.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 30/11/22.
//

import SwiftUI

@main
struct Scrumdinger_SOApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumView(scrums: $scrums)
            }
        }
    }
}
