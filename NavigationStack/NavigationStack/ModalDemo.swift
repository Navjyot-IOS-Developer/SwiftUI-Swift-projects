//
//  ModalDemo.swift
//  NavigationStack
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct ModalDemo: View {
  @State private var showSheet = false
  @State private var showAlert = false

  var body: some View {
    VStack(spacing: 12) {
      Button("Show Sheet") { showSheet = true }
      Button("Show Alert") { showAlert = true }
    }
    .sheet(isPresented: $showSheet) {
      VStack(spacing: 12) {
        Text("Hello from a sheet")
        Button("Close") {showSheet = false }
      }
      .padding()
      .presentationDetents([.medium])
    }
    .alert("Are you sure?", isPresented: $showAlert) {
      Button("Cancel", role: .cancel) { }
      Button("Ok", role: .destructive) { }

    }message: {
      Text("This is a confirmation alert")
    }
    .padding()
  }
}
#Preview {
  ModalDemo()
}
