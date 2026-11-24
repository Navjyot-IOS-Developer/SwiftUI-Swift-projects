//
//  NoteItem.swift
//  SmartNotes
//
//  Created by Nav on 24/11/26.
//

import Foundation
import SwiftData

@Model
class NoteItem {
  var title: String
  var createdAt: Date

  init(title: String, createdAt: Date = Date()) {
    self.title = title
    self.createdAt = createdAt
  }
}
