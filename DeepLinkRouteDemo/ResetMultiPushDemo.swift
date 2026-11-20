//
//  ResetMultiPushDemo.swift
//  DeepLinkRouteDemo
//
//  Created by Nav on 20/11/26.
//

import SwiftUI

struct ResetMultiPushDemo: View {
  @State private var path: [Int] = []
    var body: some View {
      NavigationStack(path: $path) {
        VStack(spacing: 12) {
          Button("Reset to root") { path.removeAll() }
          Button("Go to 1 â†’ 2 â†’ 3") { path.append(contentsOf: [1,2,3]) }
        }
        .navigationDestination(for: Int.self) {n in Text("Screen#\(n)")}
        .navigationTitle("Reset and Multi-push")
      }
    }
}

#Preview {
    ResetMultiPushDemo()
}
