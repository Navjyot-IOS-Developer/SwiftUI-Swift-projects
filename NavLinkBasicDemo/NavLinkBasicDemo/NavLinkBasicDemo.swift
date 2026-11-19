//
//  NavLinkBasicDemo.swift
//  NavLinkBasicDemo
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct Detail: View {
  var body: some View {
    Text("Detail")
  }
}

struct NavLinkBasicDemo: View {
  var body: some View {
    NavigationLink("Go to Detail", destination: Detail())
      .navigationTitle("Home")
  
  }
}
#Preview {
    NavLinkBasicDemo()
}
