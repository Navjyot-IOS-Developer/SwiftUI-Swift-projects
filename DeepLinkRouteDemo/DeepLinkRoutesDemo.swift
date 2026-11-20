//
//  DeepLinkRoutesDemo.swift
//  DeepLinkRouteDemo
//
//  Created by Nav on 20/11/26.
//

import SwiftUI

struct ProfileView: View {
  let user: String;
  var body: some View {
    Text("profile: \(user)")
  }
}

struct ArticleView: View {
  let slug: String;
  var body: some View {
    Text("Article: \(slug)")
  }
}

enum Route: Hashable { case item(Int), profile(String), article(String) }

struct DeepLinkRoutesDemo: View {
  @State private var path: [Route] = []
    var body: some View {
      NavigationStack(path: $path) {
        Text("Home")
          .onOpenURL { url in
            guard url.scheme == "myapp" else { return }
            switch url.host {
            case "item": if let id = Int(url.lastPathComponent) { path.append(.item(id))}
            case "profile": path.append(.profile(url.lastPathComponent))
            case "article": path.append(.article(url.lastPathComponent))
            default: break
            }
          }
          .navigationDestination(for: Route.self) { route in
            switch route {
            case .item(let id): Text("Item #\(id)")
            case .profile(let u): ProfileView(user: u)
            case .article(let s): ArticleView(slug: s)
            }
          }
          .navigationTitle("Routes")
      }
    }
}

#Preview {
    DeepLinkRoutesDemo()
}
