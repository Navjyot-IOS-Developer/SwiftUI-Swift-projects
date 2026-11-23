//
//  ModifierApp.swift
//  Modifier
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

@main
struct ModifierApp: App {
    var body: some Scene {
        WindowGroup {
          Modifier()
          _ViewBuilder()
          CustomModifier()
          Focus()
        }
    }
}
