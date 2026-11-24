//
//  NotesView.swift
//  SmartNotes
//
//  Created by Nav on 24/11/26.
//

import SwiftUI
import SwiftData

struct NotesView: View {
  // Database connection
  @Environment(\.modelContext) private var context
  @Query(sort: \NoteItem.createdAt, order: .reverse) private var notes: [NoteItem]

  // MVVM Brain
  @State private var viewModel = NotesViewModel()

  // Quick Storage
  @AppStorage("isDarkMode") private var isDarkMode = false
  @SceneStorage("draftNoteText") private var draftText = ""

  var body: some View {
    NavigationStack {
      VStack(spacing: 16) {
        // Network Quote Banner
        Text(viewModel.dailyQuote)
          .font(.footnote)
          .italic()
          .padding()
          .frame(maxWidth: .infinity)
          .background(Color.blue.opacity(0.1))
          .clipShape(RoundedRectangle(cornerRadius: 10))

        // Input Field
        HStack {
          TextField("Write a quick note...", text: $draftText)
            .textFieldStyle(.roundedBorder)

          Button("Save") {
            viewModel.addNote(title: draftText, context: context)
            draftText = ""
          }
          .buttonStyle(.borderedProminent)
          .disabled(draftText.trimmingCharacters(in: .whitespaces).isEmpty)
        }

        // Saved Notes List
        List {
          ForEach(notes) { note in
            VStack(alignment: .leading, spacing: 4) {
              Text(note.title)
                .font(.body)
              Text(note.createdAt, style: .time)
                .font(.caption2)
                .foregroundStyle(.secondary)
            }
          }
          .onDelete { offsets in
            viewModel.deleteNotes(at: offsets, from: notes, context: context)
          }
        }
        .listStyle(.plain)
      }
      .padding()
      .navigationTitle("Smart Notes")
      .toolbar {
        Toggle("Dark Mode", isOn: $isDarkMode)
      }
      .preferredColorScheme(isDarkMode ? .dark : .light)
      .task {
        await viewModel.loadQuote()
      }
    }
  }
}

// MARK: - Xcode Canvas Preview
#Preview {
  // 1. Create a fake, temporary database just for the Canvas preview
  let config = ModelConfiguration(isStoredInMemoryOnly: true)
  let container = try! ModelContainer(for: NoteItem.self, configurations: config)

  // 2. Add sample notes so the preview screen isn't empty
  container.mainContext.insert(NoteItem(title: "Test Xcode Canvas Preview"))
  container.mainContext.insert(NoteItem(title: "Learn SwiftUI MVVM"))

  // 3. Return the View attached to that fake database
  return NotesView()
    .modelContainer(container)
}

