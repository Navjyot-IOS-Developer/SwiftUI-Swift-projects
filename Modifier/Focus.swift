//
//  Focus.swift
//  Modifier
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

import SwiftUI

struct Focus: View {
  @AccessibilityFocusState private var focused: Bool
  var body: some View {
    VStack(spacing: 12) {
      Text("Status").accessibilityFocused($focused)
      Button("Focus Status") { focused = true }
    }
    .padding()
  }
}
#Preview {
    Focus()
}
