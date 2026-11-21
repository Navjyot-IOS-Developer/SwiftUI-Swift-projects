//
//  Lists_and_FormsApp.swift
//  Lists and Forms
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

@main
struct Lists_and_FormsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            TodoList()
            SettingsForm()
            ListBasic()
            ListCustom()
        }
    }
}
