import SwiftUI

struct NumberDetail: View {
  let n: Int

  var body: some View {
    Text("Number: \(n)")
  }
}

struct PathDemo: View {
  @State private var path: [Int] = []

  var body: some View {
    NavigationStack(path: $path) {
      VStack(spacing: 12) {
        Button("Go to 42") {
          path.append(42)
        }
        Button("Back") {
          if !path.isEmpty {
            _ = path.removeLast()
          }
        }
      }
      .navigationTitle("Path Demo")
      .navigationDestination(for: Int.self) { n in
        NumberDetail(n: n)
      }
    }
  }
}

#Preview {
  PathDemo()
}

