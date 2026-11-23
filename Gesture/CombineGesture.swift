//
//  CombineGesture.swift
//  Gesture
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct CombineGesture: View {
  @State private var tapped = 0
  @State private var dragged = false
  var body: some View {
    Rectangle()
      .fill(dragged ? .orange : .purple)
      .frame(height: 120)
      .overlay(Text("taps: \\(tapped)"))
      .simultaneousGesture(TapGesture().onEnded { tapped += 1 })
      .highPriorityGesture(DragGesture().onChanged { _ in dragged = true }.onEnded { _ in dragged = false })
  }
}


#Preview {
    CombineGesture()
}
