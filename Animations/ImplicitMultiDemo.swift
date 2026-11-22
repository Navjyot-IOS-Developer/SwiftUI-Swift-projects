//
//  ImplicitMultiDemo.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct ImplicitMultiDemo: View {
  @State private var on = false
    var body: some View {
      VStack(spacing: 16) {
        Image(systemName: "star.fill")
          .font(.system(size: 48))
          .foregroundStyle(on ? .yellow : .gray)
          .scaleEffect(on ? 1.25 : 1.0)
          .opacity(on ? 1 : 0.6)
      }
    }
}

#Preview {
    ImplicitMultiDemo()
}
