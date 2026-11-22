//
//  TaptoGrow.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct TaptoGrow: View {
  @State private var on = false
  var body: some View {
    VStack(spacing: 12) {
      Circle()
        .fill(on ? .green : .gray)
        .frame(width: on ? 120 : 60, height: on ? 120 : 60)
        .animation(.spring(), value: on)
      Button(on ? "Reset" : "Grow") { on.toggle() }
    }
    .padding()
  }
}

#Preview {
    TaptoGrow()
}
