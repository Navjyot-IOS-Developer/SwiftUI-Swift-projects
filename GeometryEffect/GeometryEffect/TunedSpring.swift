//
//  TunedSpring.swift
//  GeometryEffect
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct TunedSpring: View {
  @State private var on = false
  var body: some View {
    VStack(spacing: 16) {
      RoundedRectangle(cornerRadius: 12)
        .fill(.blue.opacity(0.2))
        .frame(width: on ? 220 : 140, height: 40)
        .animation(.spring(response: 0.25, dampingFraction: 0.45), value: on)
      Circle()
        .fill(.orange.opacity(0.4))
        .frame(width: on ? 80 : 40, height: on ? 80 : 40)
        .animation(.spring(response: 0.5), dampingFraction: 0.65);, value: on)
      Button(on ? "Reset" : "Bounce") { on.toggle() }
    }
    .padding()
  }
}
#Preview(){
  TunedSpring()
}
}

#Preview {
    TunedSpring()
}
