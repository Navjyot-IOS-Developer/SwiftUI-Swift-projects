//
//  LazyStackDemo.swift
//  SafeAreaInsetDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct LazyStacksDemo: View {
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 8) {
        ForEach(1...100, id: \.self) { i in
          Text("Row \(i)").frame(maxWidth: .infinity, alignment: .leading).padding(8)
            .background(.gray.opacity(0.1)).cornerRadius(6)
        }
      }.padding()
    }
  }
}


#Preview {
  LazyStacksDemo()
}
