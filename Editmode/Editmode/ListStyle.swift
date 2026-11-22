//
//  ListStyle.swift
//  Editmode
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct ListStyle: View {
    var body: some View {
      List { Text("A"); Text("B"); Text("C") }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    ListStyle()
}
