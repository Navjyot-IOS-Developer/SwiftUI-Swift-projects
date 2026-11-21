//
//  Forms.swift
//  Lists and Forms
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

struct SettingsForm: View {
  @State private var name = ""
  @State private var notifications = true
  @State private var count = 1
  var body: some View {
    Form {
      Section(header: Text("profile")) {
        TextField("Name", text: $name)
      }
      Section(header: Text("Preferences")) {
        Toggle("Notifications", isOn: $notifications)
        Stepper("Count: \(count)", value: $count, in: 1...10)
      }
    }
  }
}

#Preview {
    SettingsForm()
}
