//
//  ListCustom.swift
//  Lists and Forms
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

struct Product: Identifiable { let id: Int; let name: String; let price: Double }

struct ListCustom: View {
  let items = [
    Product(id: 1, name: "Coffee", price: 2.88),
    Product(id: 2, name: "Tea", price: 2)
  ]
  var body: some View {
    List {
      ForEach(items) { p in
        HStack {
          Text(p.name); Spacer(); Text(String(format: "$%.2f", p.price)) }
      }
    }
  }
}
#Preview {
    ListCustom()
}
