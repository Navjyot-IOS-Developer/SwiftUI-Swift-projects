//
//  TabSelectionDemo.swift
//  TabView
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

enum Tab: Hashable { case home, inbox }

struct TabSelectionDemo: View {
  @State private var selection: Tab = .home
    var body: some View {
      TabView(selection: $selection) {
        Text("Home").tabItem { Label("Home", systemImage: "house")}.tag(Tab.home)
        Text("Inbox")
          .tabItem { Label("Inbox", systemImage: "tray")}
          .badge(3)
          .tag(Tab.inbox)

      }

    }
}

#Preview {
    TabSelectionDemo()
}
