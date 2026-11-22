//
//  Section.swift
//  ForEach
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct Section: View {
  var body: some View {
    List {
      Section(header: Text("Fruits"), footer: Text("End Fruits")) {
        Text("Apple"); Text("Banana")
      }
      Section(header: Text("Veggies")) { Text("Carrot") }
    }
  }
}


#Preview {
    Section()
}
