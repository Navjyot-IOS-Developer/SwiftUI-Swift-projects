//
//  Validation.swift
//  Forms
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Validation: View {
  @State private var email = ""
  @State private var accepted = false
  var valid: Bool { email.contains("@") && accepted }

    var body: some View {
      Form {
        Section(header: Text("Account")) {
          TextField("Email", text: $email).keyboardType(.emailAddress)
          Toggle("Accept Terms", isOn: $accepted)
        }
        Section { Button("Submit") { } .disabled(!valid)}
      }

    }
}

#Preview {
    Validation()
}
