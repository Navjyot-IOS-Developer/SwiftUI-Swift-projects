//
//  AnimationsApp.swift
//  Animations
//
//  Created by Nav on 22/11/26.
//

import SwiftUI

@main
struct AnimationsApp: App {
    var body: some Scene {
        WindowGroup {
          ImplicitAnimation()
          Explicit()
          Transition()
          TaptoGrow()
          AnimateTransition()
          AsymmetricTransition()
          GeometryMatched()
        }
    }
}
