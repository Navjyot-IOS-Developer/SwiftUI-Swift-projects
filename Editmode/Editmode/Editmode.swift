//
//  Editmode.swift
//  Editmode
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Editmode: View {
  @State private var items = ["A", "B", "C"]
  var body: some View {
    NavigationStack {
      List {
        ForEach(items, id: \.self) { Text($0) }
          .onDelete {items.remove(atOffsets: $0) }
          .onMove {items.move(fromOffsets: $0, toOffset: $1) }
      }
      .navigationTitle("Edit Mode")
      .toolbar { EditButton() }
    }
  }
}

#Preview {
    Editmode()
}
