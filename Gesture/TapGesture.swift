//
//  TapGesture.swift
//  Gesture
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct TapGesture: View {
  @State private var on = false
  var body: some View {
    VStack(spacing: 12) {
      Circle()
        .fill(on ? .red : .gray)
        .frame(width: 80, height: 80)
        .onTapGesture {
          on.toggle()
        }
      Text(on ? "On" : "off")
    }
  }
}
#Preview {
    TapGesture()
}
