//
//  GridDemo.swift
//  GridDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct GridDemo: View {
  let columns = [GridItem(.flexible()), GridItem(.flexible())]
  var body: some View {
    LazyVGrid(columns: columns, spacing: 12) {
      ForEach(1...6, id: \.self) { i in
        Text("Item \(i)")
          .frame(maxWidth: .infinity)
          .padding(12)
          .background(.blue.opacity(0.1))
          .cornerRadius(28)
      }

    }.padding()
  }
}
#Preview {
  GridDemo()
}
