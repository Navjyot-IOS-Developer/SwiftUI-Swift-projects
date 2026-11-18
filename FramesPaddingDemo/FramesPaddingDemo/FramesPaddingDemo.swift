//
//  FramesPaddingDemo.swift
//  FramesPaddingDemo
//
//  Created by Nav on 18/11/26.
//
import SwiftUI

struct FramesPaddingDemo: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Fixed Size")
                .frame(width: 160, height: 100)
                .background(.blue.opacity(0.1))
            Text("Max width")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(8)
                .background(.green.opacity(0.1))

            Divider()

        }

    }
}
#Preview {
    FramesPaddingDemo()
}
