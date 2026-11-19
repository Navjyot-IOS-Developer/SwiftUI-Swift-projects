//
//  SheetBasicsDemo.swift
//  TabView
//
//  Created by Nav on 19/11/26.
//

import SwiftUI

struct SheetBasicsDemo: View {

  @State private var show = false
    var body: some View {

      Button("Show Sheet") { show = true }
        .sheet(isPresented: $show) {

          VStack(spacing: 12) {

            Text("Modal")
            Button("Close") { show = false }
          }
          .padding()
        }

    }
}

#Preview {
    SheetBasicsDemo()
}
