//
//  GeometryPositionDemo.swift
//  GridDemo
//
//  Created by Nav on 18/11/26.
//
import SwiftUI

struct GeometryPositionDemo: View {
  var body: some View {
    GeometryReader { geo in
      ZStack {
        Color.orange.opacity(0.1)
        Text("Bottom Right")
          .padding(8)
          .background(.thinMaterial, in:  Capsule())
          .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .bottomTrailing)
          .offset(x: 0, y: -12)
      }
    }


  }
}
#Preview {
  GeometryPositionDemo()
}
