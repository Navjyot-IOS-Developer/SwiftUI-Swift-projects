//
//  ImplicitAnimation.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct ImplicitAnimation: View {
  @State private var on = false
    var body: some View {
        Circle()
        .fill(on ? .yellow: .gray)
        .frame(width: on ? 120 : 60, height: on ? 120 : 60)
        .animation(.spring(), value: on)
        .onTapGesture {
          on.toggle()
        }
    }
}

#Preview {
    ImplicitAnimation()
}
