//
//  ContentView.swift
//  StacksDemo
//
//  Created by Nav on 17/11/26.
//

import SwiftUI

struct StacksDemo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Title").font(.title)
            HStack {
                Text("Left")
                Spacer()
                Text("Right")
            }
            ZStack {
                Color.blue.opacity(0.1)
                Text("Overlay")
            }
        }
        .padding()
    }
}



#Preview {
    StacksDemo()
}
