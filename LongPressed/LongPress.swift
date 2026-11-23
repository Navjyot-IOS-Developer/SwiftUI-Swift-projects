//
//  LongPress.swift
//  LongPressed
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct LongPress: View {
  @State private var pressed = false
    var body: some View {
      Text(pressed ? "pressed" : "Hold me")
        .padding(12)
        .background(.blue.opacity(0.1))
        .cornerRadius(8)
        .onLongPressGesture(minimumDuration: 0.1) { pressed.toggle() }
    }
}

#Preview {
    LongPress()
}
