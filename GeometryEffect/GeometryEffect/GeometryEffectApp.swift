//
//  GeometryEffectApp.swift
//  GeometryEffect
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

@main
struct GeometryEffectApp: App {
    var body: some Scene {
        WindowGroup {
          GeometryEffect()
          CardExpand()
          Spring()
          TunedSpring()
        }
    }
}
