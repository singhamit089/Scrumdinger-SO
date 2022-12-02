//
//  DailyScrum.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 01/12/22.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
       }
}
extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
         
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}
extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .purple),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .teal),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "iOS Dev", attendees: ["Amit", "Jake", "Olivia", "Eden J", "John C", "Adam", "Aga", "Cam"], lengthInMinutes: 5, theme: .yellow),
        DailyScrum(title: "Android Dev", attendees: ["Norman", "Rahul", "Tom", "Sam J", "Tan C", "Vazir", "Don", "Cam"], lengthInMinutes: 5, theme: .red)
    ]
}
