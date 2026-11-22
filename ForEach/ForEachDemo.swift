//
//  ForEachDemo.swift
//  ForEach
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

struct ForEachDemo: View {
  let nums = [1,2,3]
    var body: some View {
      VStack {
        ForEach(nums, id: \.self) { n in
          Text("Item \(n)")
        }
      }
    }
}

#Preview {
    ForEachDemo()
}
