//
//  @ViewBuilder.swift
//  Modifier
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

@ViewBuilder
func InfoRow(_ title: String, _ value: String) -> some View {
  HStack { Text(title).bold(); Spacer(); Text(value) }
}

struct _ViewBuilder: View {
  var body: some View {
    VStack(spacing: 8) {
      InfoRow("Name", "SwiftUI")
      InfoRow("Version", "5+")
    }
    .padding()
  }
}
#Preview {
    _ViewBuilder()
}
