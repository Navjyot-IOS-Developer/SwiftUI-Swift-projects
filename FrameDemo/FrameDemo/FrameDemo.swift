//
//  FrameDemo.swift
//  FrameDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct FrameDemo: View {
    var body: some View {
        VStack(spacing: 16) {
            ZStack(alignment: .topLeading) {
                Color(.yellow.opacity(0.2))
                Text("Top left").padding(6)
            }
            .frame(width: 200, height: 100) // fixed size

            HStack {
                Text("Left")
                Spacer()
                Text("Right")
            }
            .frame(maxWidth: .infinity, alignment: .leading) // expand horizontally
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                Text("Title").font(.title)
                Text("Aligned baseline")
                    .alignmentGuide(.firstTextBaseline) { d in d[.bottom]}
            }
        }
        .padding()

    }
}
#Preview {
    FrameDemo()
}
