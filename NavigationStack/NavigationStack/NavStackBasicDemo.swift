//
//  NavStackBasicDemo.swift
//  NavigationStack
//
//  Created by Nav on 19/11/26.
//
import SwiftUI

struct Details: View { let value: Int; var body: some View { Text("Details: \(value)") } }

struct NavStackBasicDemo: View {
  var body: some View {
    NavigationStack {
      List(1...5, id: \.self) { n in
        NavigationLink("Item \(n)", value: n)
      }
      .navigationDestination(for: Int.self) { n in Details(value: n) }
      .navigationTitle("Items")
    }
  }
}
#Preview {
    NavStackBasicDemo()
}
