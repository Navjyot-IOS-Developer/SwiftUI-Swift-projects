//
//  OverlayDemo.swift
//  OverlayDemo
//
//  Created by Nav on 18/11/26.
//
import SwiftUI

struct OverlayDemo: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.blue.opacity(0.15))
            Text("Badge Star")
                .padding()
                .background(.ultraThinMaterial, in: Capsule())
                .alignmentGuide(.top) { d in d[.bottom]}
        }
        .frame(width: 220, height: 120)
        .padding()
    }
}
#Preview {
    OverlayDemo()
}
