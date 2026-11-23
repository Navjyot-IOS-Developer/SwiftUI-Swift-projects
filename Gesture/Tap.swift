//
//  Tap.swift
//  Gesture
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Tap: View {
  @State private var on = false
  @State private var pressed = false
  var body: some View {
    Circle()
      .fill(on ? .green : .gray)
      .frame(width: 80, height: 80)
      .scaleEffect(pressed ? 0.9 : 1)
      .onTapGesture { on.toggle() }
      .onLongPressGesture(minimumDuration: 0.5) { pressed.toggle() }
  }
}

#Preview {
    Tap()
}
