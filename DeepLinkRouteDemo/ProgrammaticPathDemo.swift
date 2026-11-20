//
//  ProgrammaticPathDemo.swift
//  DeepLinkRouteDemo
//
//  Created by Nav on 20/11/26.
//

import SwiftUI

struct NumberDetail: View {
  let n: Int;
  var body: some View {
    Text("Number: \(n)")
  }
}

struct ProgrammaticPathDemo: View {
  @State private var path: [Int] = []
    var body: some View {
      NavigationStack(path: $path) {
        VStack(spacing: 12) {
          Button("Go to 42") { path.append(42) }
          Button("Back") { if !path.isEmpty { _ = path.removeLast() } }
        }
        .navigationDestination(for: Int.self) { n in NumberDetail(n: n) }
        .navigationTitle("Programmatic")
      }
    }
}

#Preview {
    ProgrammaticPathDemo()
}
