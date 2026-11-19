//
//  NavigationStackApp.swift
//  NavigationStack
//
//  Created by Nav on 18/11/26.
//

import SwiftUI

@main
struct NavigationStackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            NavStackDemo()
            ModalDemo()
            PathDemo()
            NavStackBasicDemo()
        }
    }
}
