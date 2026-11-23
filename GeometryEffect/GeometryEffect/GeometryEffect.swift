//
//  GeometryEffect.swift
//  GeometryEffect
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct GeometryEffect: View {
  @Namespace private var ns
  @State private var showdetail = false
  var body: some View {
    VStack(spacing: 16) {
      if showdetail {
        Circle().matchedGeometryEffect(id: "dot", in: ns).frame(width: 120, height: 120)
      }
      else {
        Circle().matchedGeometryEffect(id: "dot", in: ns).frame(width: 40, height: 40)
      }
      Button("Toggle") { withAnimation(.spring()) { showdetail.toggle() }
      }
      .padding()
    }
  }
}

#Preview {
    GeometryEffect()
}
