//
//  ComposingApp.swift
//  Composing
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

@main
struct ComposingApp: App {
    var body: some Scene {
        WindowGroup {
            TapandDrag()
            Priority()
        }
    }
}
