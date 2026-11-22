//
//  Picker.swift
//  Forms
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Picker: View {
  @State private var selection = 0
  @State private var count = 1
  var body: some View {
    Form {
      Picker("Options", selection: $selection) {
        Text("A").tag(0); Text("B").tag(1); Text("C").tag(2)
      }
      .pickerStyle(.segmented)
      Stepper("Count: \(count)", value: $count, in: 1...5)
    }
  }
}


#Preview {
    Picker()
}
