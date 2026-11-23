//
//  LongPressedApp.swift
//  LongPressed
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

@main
struct LongPressedApp: App {
    var body: some Scene {
        WindowGroup {
          LongPressed()
          Progress()
          Drag()
          DragInBound()
        }
    }
}
