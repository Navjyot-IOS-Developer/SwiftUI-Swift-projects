//
//  LazyHStackDemo.swift
//  SafeAreaInsetDemo
//
//  Created by Nav on 18/11/26.
//
import SwiftUI

struct LazyHStackDemo: View {
  var body: some View {
    ScrollView(.horizontal) {
      LazyHStack(spacing: 12) {
        ForEach(1...50, id: \.self) { i in
          Text("Card \(i)")
            .padding(16)
            .background(.blue.opacity(0.1))
            .cornerRadius(8)
        }
      }.padding()
    }
  }
}
#Preview() {
  LazyHStackDemo()
  }
