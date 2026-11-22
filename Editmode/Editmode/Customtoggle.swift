//
//  Customtoggle.swift
//  Editmode
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Customtoggle: View {
  @State private var items = ["A","B","C"]
  @State private var editMode: EditMode = .inactive
    var body: some View {
      VStack {
        List {
          ForEach(items, id: \.self) {Text($0) }
            .onDelete {items.remove(atOffsets: $0) }
            .onMove {items.move(fromOffsets: $0, toOffset: $1) }
        }
        .environment(\.editMode, $editMode)
        Button(editMode.isEditing ? "Done": "Edit") { editMode.toggle() }
      }
    }
}
private extension EditMode {
  mutating func toggle() {self = (isEditing ? .inactive: .active) } }


#Preview {
    Customtoggle()
}
