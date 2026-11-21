//
//  ToolbarPlacementsDemo.swift
//  ToolbarBasicDemo
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

struct ToolbarPlacementsDemo: View {
  @State private var text = ""
  var body: some View {
    NavigationStack {
      VStack(spacing: 12) {
        TextField("Type...", text: $text).textFieldStyle(.roundedBorder)
      }
      .padding()
      .navigationTitle("Placements")
      .toolbar {
        ToolbarItem(placement: .bottomBar) { Button("Edit") {} }
        ToolbarItemGroup(placement: .keyboard) { Spacer(); Button("Done") { } }
      }
    }
  }
}


#Preview {
    ToolbarPlacementsDemo()
}
