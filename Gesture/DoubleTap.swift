//
//  DoubleTap.swift
//  Gesture
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct DoubleTap: View {
  @State private var count = 0
  var body: some View {
    VStack(spacing: 12) {
      Text("Double taps: \(count)")
      RoundedRectangle(cornerRadius: 8)
        .fill(.blue.opacity(0.15))
        .frame(width: 160, height: 80)
        .overlay(Text("Double tap me"))
        .gesture(TapGesture(count: 2).onEnded { count += 1 })
    }
    .padding()
  }
}

#Preview {
    DoubleTap()
}
