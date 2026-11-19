//
//  TabBasicDemo.swift
//  TabView
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct TabBasicDemo: View {
    var body: some View {
      TabView {
        Text("Home").tabItem { Label("Home", systemImage: "house") }
        Text("Settings").tabItem { Label("Settings", systemImage: "gear")}

      }
    }
}

#Preview {
    TabBasicDemo()
}
