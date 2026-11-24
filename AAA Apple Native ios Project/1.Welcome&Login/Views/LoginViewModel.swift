//
//  LoginViewModel.swift
//  1.Welcome&Login
//
//  Created by Nav on 24/11/26.
//


import Foundation
import SwiftUI
import Combine

class LoginViewModel: ObservableObject {

  @Published var email: String = ""
  @Published var password: String = ""
  @Published var loginMessage: String = ""

  func login() {

    let trimmedEmail = email.trimmingCharacters(
      in: .whitespacesAndNewlines
    )

    if trimmedEmail.isEmpty {
      loginMessage = "Please enter email."
      return
    }

    if password.isEmpty {
      loginMessage = "Please enter password."
      return
    }

    loginMessage = "Login Successful ✅"
  }
}

