//
//  WelcomeView.swift
//  1.Welcome&Login
//
//  Created by Nav on 24/11/26.
//

import SwiftUI

struct WelcomeView: View {

  var body: some View {

    NavigationStack {

      VStack(spacing: 20) {

        Text("Welcome Captain 🚀")
          .font(.largeTitle)
          .fontWeight(.bold)

        Text("Let's start our iOS journey")
          .foregroundColor(.gray)

        NavigationLink("Go To Login") {
          LoginView()
        }
        .buttonStyle(.borderedProminent)
      }
      .padding()
    }
  }
}

#Preview {
  WelcomeView()
}
