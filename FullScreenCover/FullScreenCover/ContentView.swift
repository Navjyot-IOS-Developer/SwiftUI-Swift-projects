//
//  ContentView.swift
//  FullScreenCover
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct FullScreencoverDemo: View {
  @State private var show = false
  var body: some View {
    Button("Present full screen") {show = true}
      .fullScreenCover(isPresented: $show) {
        CoverView(onClose: {show = false })
      }
  }
}

struct CoverView: View {
  let onClose: () -> Void
  var body: some View {
    ZStack {
      Color.black.opacity(0.85).ignoresSafeArea()
      VStack(spacing: 12) {
        Text("Full Screen").foregroundStyle(.white)
        Button("Dismiss") { onClose() }.tint(.white)
      }
      .padding()

    }
  }
}
#Preview {
  FullScreencoverDemo()
}
