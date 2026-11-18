//
//  SafeAreaInsetDemo.swift
//  SafeAreaInsetDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct SafeAreaInsetDemo: View {
  var body: some View {
    ZStack {
      LinearGradient(
        colors: [.yellow, .pink],
        startPoint: .top,
        endPoint: .bottom
      )
      .safeAreaInset(edge: .bottom) {
        HStack {
          Image(systemName: "house.fill"); Spacer(); Image(systemName: "gear")
        }
        .padding()
        .background(.regularMaterial)
      }
    }
  }
}
#Preview() {
  SafeAreaInsetDemo()
}

