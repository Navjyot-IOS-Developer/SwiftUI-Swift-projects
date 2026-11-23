//
//  Priority.swift
//  ComposingGesture
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Priority: View {
  @State private var tapped = 0
  @State private var dragging = false
    var body: some View {
      Rectangle()
        .fill(dragging ? .orange : .purple)
        .frame(height: 120)
        .overlay(Text("tap: \(tapped)"))
        .highPriorityGesture(
          DragGesture().onChanged {_ in dragging = true
          }.onEnded { _ in dragging = false})
        .gesture(TapGesture().onEnded {if (!dragging) {tapped += 1 }} )

    }
}

#Preview {
    Priority()
}
