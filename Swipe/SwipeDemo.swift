//
//  SwipeDemo.swift
//  Swipe
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct SwipeDemo: View {
  @State private var items = ["A","B","C"]
    var body: some View {
      List {
        ForEach(items, id: \.self) { item in
        Text(item)
            .swipeActions(edge: .trailing) {
              Button(role: .destructive) { items.removeAll() {$0 == item } }
              Label("Delete", systemImage: "trash") }
              }
      }
    }
}

#Preview {
    SwipeDemo()
}
