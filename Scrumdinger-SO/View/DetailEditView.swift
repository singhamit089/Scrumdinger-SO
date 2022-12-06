//
//  DetailEditView.swift
//  Scrumdinger-SO
//
//  Created by Amit  Singh on 04/12/22.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var data: DailyScrum.Data
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                VStack (alignment: .leading, content: {
                    Text("Scrum Length")
                        .font(.title3)
                        .foregroundColor(.gray)
                    Spacer()
                    HStack {
                        Slider(value: $data.lengthInMinutes, in: 5...30, step: 1)
                        Spacer()
                        Text("\(Int(data.lengthInMinutes)) minutes")
                    }
                })
                .accessibilityElement(children: .combine)
                .accessibilityLabel("Length of the scrum")
                .accessibilityValue("\(Int(data.lengthInMinutes)) minutes")
                
                NavigationLink(destination: ThemePicker(selection: $data.theme)) {
                    Label("Theme", systemImage: "paintpalette")
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            data.attendees.append(attendee)
                            newAttendeeName = String()
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailEditView_Preview: PreviewProvider {
    static var previews: some View {
        DetailEditView(data: .constant(DailyScrum.sampleData[0].data))
    }
}
