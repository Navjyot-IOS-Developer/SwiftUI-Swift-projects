//
//  SpacerAlignmentDemo.swift
//  SpacerAlignmentDemo
//
//  Created by Nav on 18/11/26.
//
import SwiftUI

struct SpacerAlignmentDemo: View {
    var body: some View {
        HStack {
            Text("Left"); Spacer(); Text("Right")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}
#Preview {
    SpacerAlignmentDemo()
}
