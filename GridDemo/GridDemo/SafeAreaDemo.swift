//
//  SafeAreaDemo.swift
//  GridDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct SafeAreaDemo: View {
  var body: some View {
    ZStack {
      LinearGradient(
        colors: [.blue, .purple],
        startPoint: .top,
        endPoint: .bottom)
      .ignoresSafeArea()
      Text("Hello safe area")
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(8)
    }
  }
}
#Preview {
  SafeAreaDemo()
}
