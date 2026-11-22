//
//  HiddenSeparator.swift
//  Editmode
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct HiddenSeparator: View {
    var body: some View {
      List {Text("A"); Text("B"); Text("C") }
        .listStyle(.plain)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    HiddenSeparator()
}
