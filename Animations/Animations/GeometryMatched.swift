//
//  GeometryMatched.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct GeometryMatched: View {
  @Namespace private var ns
  @State private var showDetail = false
  var body: some View {
    VStack(spacing: 16) {
      if showDetail {
        Circle().matchedGeometryEffect(id: "dot", in: ns).frame(width: 120, height: 120)
      } else {
        Circle().matchedGeometryEffect(id: "dot", in: ns).frame(width: 40, height: 40)
      }
      Button("Toggle") { withAnimation(.spring()) { showDetail.toggle() } }
    }
    .padding()
  }
}


#Preview {
    GeometryMatched()
}
