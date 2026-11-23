//
//  Drag.swift
//  LongPressed
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Drag: View {
  @State private var offset: CGSize = .zero
    var body: some View {
        Text("Drag me")
        .padding(12)
        .background(.blue.opacity(0.1))
        .cornerRadius(8)
        .offset(offset)
        .gesture(DragGesture()
          .onChanged{ value in offset = value.translation }
          .onEnded {_ in withAnimation(.spring() { offset = .zero } }
                 )
    }
}

#Preview {
    Drag()
}
