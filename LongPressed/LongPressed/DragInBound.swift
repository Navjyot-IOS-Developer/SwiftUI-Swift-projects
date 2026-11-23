//
//  DragInBound.swift
//  LongPressed
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct DragInBound: View {
  @State private var offset: CGSize = .zero
  let limit: CGFloat = 120
  func clamp(_ v: CGFloat) -> CGFloat { min(max(v, -limit), limit) }
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12)
        .stroke(.gray.opacity(0.4), lineWidth: 1)
        .frame(width: 280, height: 160)
      Circle()
        .fill(.blue.opacity(0.2))
        .frame(width: 44, height: 44)
        .offset(x: offset.width, y: offset.height)
        .gesture(
          DragGesture()
            .onChanged { value in
              offset = CGSize(width: clamp(value.translation.width), height: clamp(value.translation.height))
            }
            .onEnded { _ in withAnimation(.spring()) { offset = .zero } }
        )
    }
    .padding()
  }
}

#Preview {
    DragInBound()
}
