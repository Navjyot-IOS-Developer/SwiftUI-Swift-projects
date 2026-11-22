//
//  AsymmetricTransition.swift
//  Animations
//
//  Created by Nav on 22/11/26.


import SwiftUI

struct AsymmetricTransition: View {
  @State private var show = false
  var body: some View {
    VStack(spacing: 12) {
      Button(show ? "Hide" : "Show") {
        withAnimation(.easeInOut) { show.toggle() }
      }
      if show {
        Text("Panel")
          .padding(12)
          .frame(maxWidth: .infinity)
          .background(.green.opacity(0.15))
          .cornerRadius(8)
          .transition(.asymmetric(insertion: .move(edge: .bottom).combined(with: .opacity),
                                  removal: .move(edge: .top).combined(with: .opacity)))
      }
    }
    .padding()
  }
}
#Preview {
    AsymmetricTransition()
}
