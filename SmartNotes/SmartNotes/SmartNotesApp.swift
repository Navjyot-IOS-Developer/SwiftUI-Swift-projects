//
//  SmartNotesApp.swift
//  SmartNotes
//
//  Created by Nav on 24/11/26.
//

import SwiftUI
import SwiftData

@main
struct SmartNotesApp: App {
  var body: some Scene {
    WindowGroup {
      NotesView()
    }
    // Turns on the permanent database for the real app
    .modelContainer(for: NoteItem.self)
  }
}
