//
//  AdaptiveGridDemo.swift
//  GridDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct AdaptiveGridDemo: View {
  let columns = [GridItem(.adaptive(minimum: 100), spacing: 12)]
  var body: some View {
    LazyVGrid(columns: columns, spacing: 12) {
      ForEach(1...12, id: \.self) { i in
        Text("Card \(i)")
          .frame(maxWidth: .infinity, minHeight: 60)
          .background(.yellow.opacity(12))
          .cornerRadius(8)
      }
    }
    .padding()
  }
}
#Preview {
  AdaptiveGridDemo()
}
