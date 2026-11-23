//
//  Magnify.swift
//  Magnify
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Magnify: View {
  @State private var scale: CGFloat = 1
  var body: some View {
    Image(systemName: "photo")
      .resizable().scaledToFit().frame(height: 120)
      .scaleEffect(scale)
      .gesture(
        MagnificationGesture()
          .onChanged { value in scale = value }
          .onEnded { _ in withAnimation(.spring()) { scale = 1 } }
      )
  }
}

#Preview {
    Magnify()
}
