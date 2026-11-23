//
//  Clamp.swift
//  Magnify
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Clamp: View {
  @State private var scale: CGFloat = 1
  let minS: CGFloat = 0.5
  let maxS: CGFloat = 2.0
  func clamp(_ v: CGFloat) -> CGFloat { min(max(v, minS), maxS) }
  var body: some View {
    Image(systemName: "photo")
      .resizable().scaledToFit().frame(height: 120)
      .scaleEffect(scale)
      .gesture(
        MagnificationGesture()
          .onChanged { value in scale = clamp(value) }
          .onEnded { _ in withAnimation(.easeInOut) { scale = 1 } }
      )
  }
}

#Preview {
    Clamp()
}
