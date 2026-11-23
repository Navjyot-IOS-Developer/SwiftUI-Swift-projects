//
//  GestureApp.swift
//  Gesture
//
//  Created by Nav on 23/11/26.
//

import SwiftUI

@main
struct GestureApp: App {
    var body: some Scene {
        WindowGroup {
            Tap()
            Drag()
            CombineGesture()
            TapGesture()
            DoubleTap()
        }
    }
}
