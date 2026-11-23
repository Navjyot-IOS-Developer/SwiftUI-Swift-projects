//
//  CustomModifier.swift
//  Modifier
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct CardStyle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .padding()
      .background(.blue.opacity(0.1))
      .cornerRadius(8)
  }
}

extension View {
  func card() -> some View { modifier(CardStyle()) }
}
struct CustomModifier: View {
  var body: some View {
    Text("card").card() }
    
}

#Preview {
    CustomModifier()
}
