//
//  AlignmentGuideDemo.swift
//  AlignmentGuideDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

struct AlignmentGuideDemo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                Text("Title").font(.title)
                Text("Aligned")
                    .alignmentGuide(.firstTextBaseline) {d in d[.bottom]}

            }
            HStack {
                Text("Left"); Spacer(); Text("Right")
            }

        }
        .padding()
    }
}
#Preview {
    AlignmentGuideDemo()
}
