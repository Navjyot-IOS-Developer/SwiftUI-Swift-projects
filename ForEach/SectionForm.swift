//
//  SectionForm.swift
//  ForEach
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct SectionForm: View {
  @State private var name = ""
  @State private var notifications = true
  var body: some View {
    Form {
      Section(header: Text("Profile"), footer: Text("Shown to others")) {
        TextField("Name", text: $name)
      }
      Section(header: Text("Preferences")) {
        Toggle("Notifications", isOn: $notifications)
      }
    }
  }
}


#Preview {
    SectionForm()
}
