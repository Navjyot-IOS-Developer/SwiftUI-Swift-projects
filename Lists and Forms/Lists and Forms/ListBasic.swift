//
//  SwiftUIView.swift
//  Lists and Forms
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

struct Item: Identifiable { let id: Int; let title: String }

struct ListBasic: View {
  let items = [Item(id: 1, title: "Milk"), Item(id: 2, title: "Bread")]
    var body: some View {
      List(items) { Text($0.title)}
    }
}

#Preview {
  ListBasic()
}
