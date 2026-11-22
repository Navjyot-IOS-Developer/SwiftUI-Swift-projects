//
//  Transition.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Transition: View {
  @State private var show = false
    var body: some View {
      VStack(spacing: 12) {
        Button(show ? "Hide" : "Show") {
          withAnimation(.easeInOut) {show.toggle() }
        }
        if show {
          Text("hello")
            .padding(12)
            .background(.blue.opacity(0.1))
            .cornerRadius(8)
            .transition(.opacity.combined(with: .scale))
        }
      }

    }
}

#Preview {
    Transition()
}
