//
//  Rotation.swift
//  Rotation
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Rotation: View {
  @State private var angle = Angle.zero
  var body: some View {
    Image(systemName: "arrow.2.circlepath")
      .font(.system(size: 48))
      .rotationEffect(angle)
      .gesture(
        RotationGesture()
          .onChanged { value in angle = value }
          .onEnded { _ in withAnimation(.easeInOut) { angle = .zero } }
      )
  }
}
#Preview {
    Rotation()
}
