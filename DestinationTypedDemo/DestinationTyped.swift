//
//  DestinationTyped.swift
//  DestinationTypedDemo
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

struct TextDetail: View {
  let s: String;
  var body: some View {
    Text("Text: \(s)")
  }
}

struct DestinationTyped: View {
  @State private var intPath: [Int] = []
  @State private var stringPath: [String] = []
    var body: some View {
      NavigationStack(path: $intPath) {
        VStack(spacing: 12) {
          Button("Push Int 7") {intPath.append(7) }
          NavigationLink("Push Text 'Hi'", value: "Hi")
        }
        .navigationDestination(for: Int.self) {n in NumberDetail(n: n) }
        .navigationDestination(for: String.self) {s in TextDetail(s:s)}
        .navigationTitle("Typed Destinations")
      }
    }
}

#Preview {
    DestinationTyped()
}
