//
//  AnimateProperties.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct AnimateProperties: View {
  @State private var on = false
  var body: some View {
    VStack(spacing: 16) {
      Image(systemName: "star.fill")
        .font(.system(size: 48))
        .foregroundStyle(on ? .yellow : .gray)
        .scaleEffect(on ? 1.3 : 1.0)
        .rotationEffect(.degrees(on ? 180 : 0))
        .opacity(on ? 1 : 0.6)
      Button(on ? "Reset" : "Animate") {
        withAnimation(.easeInOut(duration: 0.6)) { on.toggle() }
      }
    }
  }
}


#Preview {
    AnimateProperties()
}
