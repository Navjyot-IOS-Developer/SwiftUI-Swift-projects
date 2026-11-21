//
//  TodoList.swift
//  Lists and Forms
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

struct Todo: Identifiable { let id: Int; let title: String }

struct TodoList: View {
  let items = [Todo(id: 1, title: "Buy milk"), Todo(id: 2, title: "Walk dog")]
  var body: some View {
    List(items) { t in Text(t.title) }
  }
}

#Preview {
    TodoList()
}
