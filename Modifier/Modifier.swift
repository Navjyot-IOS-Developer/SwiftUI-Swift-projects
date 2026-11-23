//
//  Modifier.swift
//  Modifier
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

struct Modifier: View {
    var body: some View {
        Text("Hello Happy")
        .font(.title)
        .foregroundStyle(.blue)
        .padding()
        .background(.blue.opacity(0.1))
        .cornerRadius(8)
    }
}

#Preview {
    Modifier()
}
