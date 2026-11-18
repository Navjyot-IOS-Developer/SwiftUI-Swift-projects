//
//  FlexibleFramesDemo.swift
//  FlexibleFramesDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct FlexibleFramesDemo: View {
  var body: some View {
    VStack(spacing: 12) {
      Text("Trailing")
        .frame(minWidth: 120, maxWidth: .infinity, alignment: .trailing)
        .padding(8)
        .background(.gray.opacity(0.1))
        .cornerRadius(6)
      Text("Tall Block")
        .frame(maxWidth: .infinity)
        .frame(maxHeight: 120)
        .background(.orange.opacity(0.1))
        .cornerRadius(6)
    }
    .padding()

  }
}
#Preview {
  FlexibleFramesDemo()
}
