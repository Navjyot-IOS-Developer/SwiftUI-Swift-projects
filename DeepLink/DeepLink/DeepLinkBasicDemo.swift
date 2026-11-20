//
//  DeepLinkBasicDemo.swift
//  DeepLink
//
//  Created by Nav on 20/11/26.
//

import SwiftUI

struct ItemDetail: View {
  let id: Int;
  var body: some View {
    Text("Item #\(id)")
  }
}

struct DeepLinkBasicDemo: View {
  @State private var path: [Int] = []
    var body: some View {
      NavigationStack(path: $path) {
        Text("Home")
          .onOpenURL { url in
            if url.scheme == "myapp", url.host == "item", let id = Int(url.lastPathComponent){
              path.append(id)
            }
          }
          .navigationDestination(for: Int.self) { id in ItemDetail(id: id) }
          .navigationTitle("Deep Links")
      }

    }
}

#Preview {
    DeepLinkBasicDemo()
}
