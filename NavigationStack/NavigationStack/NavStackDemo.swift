//
// NavStackDemo.swift
// NavigationStack
//
// Created by Nav on 18/11/26.
//

import SwiftUI

struct Detail: View {
  let text: String

  var body: some View {
    Text(text)
      .navigationTitle("Detail")
  }
} 

struct NavStackDemo: View {
  var body: some View {
    NavigationStack {
      List(1...3, id: \.self) { i in
        // Fixed missing quote and removed space between \ and (i)
        NavigationLink("Item \(i)", destination: Detail(text: "Item \(i)"))
      }
      .navigationTitle("Items")
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button("Add") {}
        }
      }
    }
  }
}

#Preview {
  NavStackDemo()
}

