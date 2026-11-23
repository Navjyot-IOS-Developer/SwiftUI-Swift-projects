//
//  Progress.swift
//  LongPressed
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Progress: View {
  @GestureState private var isPressing = false
  @State private var done = false
  var body: some View {
    Circle()
      .fill(done ? .green : .gray)
      .frame(width: 80, height: 80)
      .scaleEffect(isPressing ? 0.9 : 1)
      .gesture(
        LongPressGesture(minimumDuration: 0.6)
          .updating($isPressing) { value, state, _ in state = value }
          .onEnded { _ in done.toggle() }
      )
  }
}

#Preview {
    Progress()
}
