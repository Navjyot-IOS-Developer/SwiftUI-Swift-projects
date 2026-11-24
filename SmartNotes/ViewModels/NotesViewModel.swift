//
//  NotesViewModel.swift
//  SmartNotes
//
//  Created by Nav on 24/11/26.
//

import Foundation
import SwiftData
import Observation

@Observable
class NotesViewModel {
  var dailyQuote: String = "Loading inspiration..."
  private let quoteService = QuoteService()

  func loadQuote() async {
    do {
      let item = try await quoteService.fetchDailyQuote()
      dailyQuote = "\"\(item.quote)\" — \(item.author)"
    } catch {
      dailyQuote = "Keep building! Every line of code counts."
    }
  }

  func addNote(title: String, context: ModelContext) {
    let cleanTitle = title.trimmingCharacters(in: .whitespaces)
    guard !cleanTitle.isEmpty else { return }

    let newNote = NoteItem(title: cleanTitle)
    context.insert(newNote)
  }

  func deleteNotes(at offsets: IndexSet, from notes: [NoteItem], context: ModelContext) {
    for index in offsets {
      context.delete(notes[index])
    }
  }
}

