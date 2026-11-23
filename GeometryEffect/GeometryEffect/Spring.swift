//
//  Spring.swift
//  GeometryEffect
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Spring: View {
  @State private var on = false
    var body: some View {
      VStack(spacing: 12) {
        Circle()
          .fill(on ? .green : .gray)
          .frame(width: on ? 120 : 60, height: on ? 120 : 60)
        Button("Toggle") {
          withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) { on.toggle() }
        }
      }
      .padding()
    }
}

#Preview {
    Spring()
}
