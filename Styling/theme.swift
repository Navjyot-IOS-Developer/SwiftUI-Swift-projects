//
//  theme.swift
//  Styling
//
//  Created by Nav on 24/11/26.
//

import SwiftUI

struct theme: View {
  @Environment(\.colorScheme) var scheme
    var body: some View {
      VStack(spacing: 12) {
        RoundedRectangle(cornerRadius: 8)
          .fill(.tint)
          .frame(height: 80)
          .overlay(Text("Tint").foregroundStyle(.white))
        Text(scheme == .dark ? "Scheme: Dark" : "Scheme: Light")
      }
      .padding()
    }
}

#Preview {
    theme()
}
