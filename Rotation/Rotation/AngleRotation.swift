//
//  AngleRotation.swift
//  Rotation
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct AngleRotation: View {
  @State private var total: Angle = .zero
  @State private var current: Angle = .zero
  var body: some View {
    VStack(spacing: 12) {
      Image(systemName: "arrow.triangle.2.circlepath")
        .font(.system(size: 48))
        .rotationEffect(total + current)
        .gesture(
          RotationGesture()
            .onChanged { value in current = value }
            .onEnded { value in total += value; current = .zero }
        )
      Text("Angle: \(Int((total + current).degrees))Â°")
    }
    .padding()
  }
}
#Preview {
    AngleRotation()
}
