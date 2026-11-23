//
//  CardExpand.swift
//  GeometryEffect
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct CardExpand: View {
  @Namespace private var ns
  @State private var expanded = false
  var body: some View {
    VStack(spacing: 16) {
      if expanded {
        Rounded(cornerRadius: 16)
          .fill(.blue.opacity(0.2))
          .matchedGeometryEffect(id: "card", in: ns)
          .frame(height: 160)
          .overlay(Text("Detail").font(.headline))
      } else {
        Rounded(cornerRadius: 12)
          .fill(.blue.opacity(0.2))
          .matchedGeometryEffect(id: "card", in: ns)
          .frame(height: 60)
          .overlay(Text("Card").font(.subheadline))
      }
      Button(expanded ? "close": "Open") {
        withAnimation(.spring()) { expanded.toggle() }
      }
    }
    .padding()
  }
}

#Preview {
    CardExpand()
}
