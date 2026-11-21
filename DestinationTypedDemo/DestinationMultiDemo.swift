//
//  SwiftUIView.swift
//  DestinationTypedDemo
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

enum Route: Hashable { case number(Int), text(String) }

struct DestinationMultiDemo: View {
  @State private var path: [Route] = []
    var body: some View {
      NavigationStack(path: $path) {
        VStack(spacing: 12) {
          Button("Go to Number 5"){ path.append(.number(5)) }
          Button("Go to text hello") { path.append(.text("hello"))}
        }
        .navigationDestination(for: Route.self) { r in
          switch r {
          case .number(let n): Text("Number: \(n)")
          case .text(let s): Text("Text: \(s)")
          }
        }
        .navigationTitle("Enum Destination")
      }
    }
}

#Preview {
    DestinationMultiDemo()
}
