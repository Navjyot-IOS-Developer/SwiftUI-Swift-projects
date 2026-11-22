//
//  Explicit.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Explicit: View {
  @State private var angle = 0.0
    var body: some View {
      VStack(spacing: 12) {
        Image(systemName: "arrow.2.circlepath")
          .rotationEffect(.degrees(angle))
        Button("Rotate") {
          withAnimation(.easeInOut) { angle += 180 }
        }
      }
    }
}

#Preview {
    Explicit()
}
