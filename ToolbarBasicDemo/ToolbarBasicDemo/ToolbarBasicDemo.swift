//
//  ToolbarBasicDemo.swift
//  ToolbarBasicDemo
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

struct ToolbarBasicDemo: View {
    var body: some View {
      NavigationStack {
        Text("Content")
          .navigationTitle("Toolbar")
          .toolbar {
            ToolbarItem(placement: .navigationBarLeading) { Button("cancel"){}}
            ToolbarItem(placement: .navigationBarTrailing) { Button("Add"){} }
          }
      }
    }
}

#Preview {
    ToolbarBasicDemo()
}
