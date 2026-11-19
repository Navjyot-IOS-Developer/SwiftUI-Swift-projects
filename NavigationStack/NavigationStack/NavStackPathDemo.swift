//
//  NavStackPathDemo.swift
//  NavigationStack
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct NumberDetal: View {
  let n: Int;
  var body: some View {
    Text("Number: \(n)")
  }
}

struct NavStackPathDemo: View {
  @State private var path: [Int] = []
    var body: some View {
      NavigationStack(path: $path) {
        VStack(spacing: 12) {
          Button("Go to 7") { path.append(7) }
          Button("Back") {if !path.isEmpty {_ = path.removeLast() } }
        }
        .navigationDestination(for: Int.self) { n in NumberDetal(n: n) }
        .navigationTitle("Path Demo")
      }
    }
}
#Preview {
    NavStackPathDemo()
}
