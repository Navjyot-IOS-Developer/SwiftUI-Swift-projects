//
//  Inputs.swift
//  Forms
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Inputs: View {
  @State private var name = ""
  @State private var enabled = true
  @State private var choice = 1

    var body: some View {
      Form {
        TextField("Name", text: $name)
        Toggle("Enabled", isOn: $enabled)
        Picker("Choice", selection: $choice) {
          Text("One").tag(1); Text("two").tag(2)
        }
      }
    }
}

#Preview {
    Inputs()
}
