//
//  QuoteService.swift
//  SmartNotes
//
//  Created by Nav on 24/11/26.
//

import Foundation

struct Quote: Codable {
  let quote: String
  let author: String
}

class QuoteService {
  func fetchDailyQuote() async throws -> Quote {
    let url = URL(string: "https://dummyjson.com")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode(Quote.self, from: data)
  }
}
