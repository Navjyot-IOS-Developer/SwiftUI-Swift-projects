//
//  Color.swift
//  Styling
//
//  Created by Nav on 24/11/26.
//

import SwiftUI

struct Color: View {
  @Environment(\.colorScheme) var scheme
    var body: some View {
      Text(scheme == dark ? "Scheme: Dark" : "Scheme: Light")
        .padding()
    }
}

#Preview {
    Color()
}
