//
//  GeometryDemo.swift
//  GridDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct GeometryDemo: View {
  var body: some View {
    GeometryReader { geo in
      VStack(spacing: 12) {
        Text("Width: \(Int(geo.size.width))")
          
        Text("Height: \(Int(geo.size.height))")
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    .background(.orange.opacity(0.1))
  }
}
#Preview {
  GeometryDemo()
}
