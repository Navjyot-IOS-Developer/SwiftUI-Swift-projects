//
//  inout.swift
//  Curve
//
//  Created by Nav on 23/11/26.
//
import SwiftUI

struct InOut: View {
  @State private var go = false
  var body: some View {
    VStack(spacing: 16) {
      HStack { Circle().frame(width: 16, height: 16).offset(x: go ? 240 : 0); Spacer() }
        .animation(.linear(duration: 1), value: go)
      HStack { Circle().frame(width: 16, height: 16).offset(x: go ? 240 : 0); Spacer() }
        .animation(.easeInOut(duration: 1), value: go)
      Button(go ? "Reset" : "Animate") { go.toggle() }
    }
    .padding()
  }
}


#Preview {
    InOut()
}
