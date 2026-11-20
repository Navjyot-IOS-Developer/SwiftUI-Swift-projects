//
//  DeepLinkRouteDemoApp.swift
//  DeepLinkRouteDemo
//
//  Created by Nav on 20/11/26.
//

import SwiftUI

@main
struct DeepLinkRouteDemoApp: App {
    var body: some Scene {
        WindowGroup {
          DeepLinkRoutesDemo()
          ProgrammaticPathDemo()
          ResetMultiPushDemo()
        }
    }
}
