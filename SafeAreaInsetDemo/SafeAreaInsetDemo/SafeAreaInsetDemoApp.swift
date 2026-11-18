//
//  SafeAreaInsetDemoApp.swift
//  SafeAreaInsetDemo
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

@main
struct SafeAreaInsetDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            SafeAreaInsetDemo()
            LazyStacksDemo()
            LazyHStackDemo()
        }
    }
}
