//
//  NavLinkValueDemo.swift
//  NavLinkBasicDemo
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct NumberDetail: View {
  let n: Int;
  var body: some View {
    Text("Number: \(n)")
  }
}

struct NavLinkValueDemo: View {
    var body: some View {
      NavigationStack {
        VStack(spacing: 12) {
          NavigationLink("Go to 100", value: 100)
        }
        .navigationDestination(for: Int.self) { n in NumberDetail(n:n) }
        .navigationTitle("Value Links")
      }
    }
}

#Preview {
    NavLinkValueDemo()
}
