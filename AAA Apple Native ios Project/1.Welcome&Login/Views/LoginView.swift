import SwiftUI

struct LoginView: View {

  @StateObject private var viewModel = LoginViewModel()

  var body: some View {

    VStack(spacing: 20) {

      Text("Login")
        .font(.largeTitle)
        .fontWeight(.bold)

      TextField(
        "Enter Email",
        text: $viewModel.email
      )
      .textFieldStyle(.roundedBorder)

      SecureField(
        "Enter Password",
        text: $viewModel.password
      )
      .textFieldStyle(.roundedBorder)

      Button {

        viewModel.login()

      } label: {

        Text("Sign In")
          .frame(maxWidth: .infinity)
      }
      .buttonStyle(.borderedProminent)

      Text(viewModel.loginMessage)
        .foregroundColor(.blue)
    }
    .padding()
  }
}

#Preview {
  LoginView()
}
