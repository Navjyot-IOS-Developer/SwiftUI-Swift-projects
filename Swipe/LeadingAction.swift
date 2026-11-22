//
//  LeadingAction.swift
//  Swipe
//
//  Created by Nav on 22/11/26.
import SwiftUI

struct LeadingAction: View {
  @State private var items = ["A","B","C"]
  @State private var favorites: Set<String> = []
  var body: some View {
    List {
      ForEach(items, id: \.self) { item in
        HStack { Text(item); if favorites.contains(item) { Image(systemName: "star.fill").foregroundStyle(.yellow) } }
          .swipeActions(edge: .leading) {
            Button { favorites.insert(item) } label: { Label("Favorite", systemImage: "star") }
            Button { } label: { Label("Share", systemImage: "square.and.arrow.up") }
          }
      }
    }
  }
}


#Preview {
    LeadingAction()
}
