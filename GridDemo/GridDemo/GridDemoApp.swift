//
//  GridDemoApp.swift
//  GridDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

@main
struct GridDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            GridDemo()
            AdaptiveGridDemo()
            GeometryDemo()
            GeometryPositionDemo()
            SafeAreaDemo()

        }
    }
}
