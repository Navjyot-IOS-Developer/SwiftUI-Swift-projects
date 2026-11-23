//
//  CurveIn.swift
//  Curve
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct CurveIn: View {
  @State Private var x: CGFloat = 0
    var body: some View {
      VStack(spacing: 12) {
        HStack { Circle().frame(width: 24, height: 24).offset(x: x); Spacer() }
        HStack(sapcing: 12) {
          Button("EaseIn") { withAnimation(.easeIn(duration: 1)) { x = 240}}
          Button("EaseOut") { withAnimation(.easeOut(duration: 1)) { x = 0 } }
        }
      }
      .padding()

    }
}

#Preview {
    CurveIn()
}
