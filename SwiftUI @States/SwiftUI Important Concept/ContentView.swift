//
//  ContentView.swift
//  SwiftUI Important Concept
//
//  Created by Nav on 21/11/26.
//

import SwiftUI

// 1. @Observable: The Kitchen's Order Board (Shared complex data)
@Observable
class CoffeeOrder {
  var drinkName = "Iced Latte"
  var extraHot = false
}

// Main Parent Screen
struct ContentView: View {
  // 2. @State: Personal Notepad (Owned by this screen)
  @State private var customerName = "Alex"
  @State private var order = CoffeeOrder()

  var body: some View {
    NavigationStack {
      Form {
        Section("1. @State & @Binding") {
          Text("Customer: \(customerName)")
            .font(.headline)
          // Passes the notepad & pen ($) to the child view
          NameEditorView(name: $customerName)
        }

        Section("2. @Observable & @Bindable") {
          Text("Drink: \(order.drinkName) \(order.extraHot ? "(Extra Hot)" : "")")
            .font(.headline)
          // Passes the shared order object to customize it
          DrinkCustomizerView(order: order)
        }

        Section("3. @Environment") {
          // Navigates to a deep screen without passing 'order' manually
          NavigationLink("Go to Checkout Receipt") {
            ReceiptView()
          }
        }
      }
      .navigationTitle("Coffee Kiosk")
    }
    // Broadcasts the order to the app's "PA System" for any screen to hear
    .environment(order)
  }
}

// Child View 1: Uses @Binding to edit Parent's @State
struct NameEditorView: View {
  @Binding var name: String

  var body: some View {
    TextField("Edit customer name", text: $name)
  }
}

// Child View 2: Uses @Bindable to edit properties of an @Observable class
struct DrinkCustomizerView: View {
  @Bindable var order: CoffeeOrder

  var body: some View {
    TextField("Drink name", text: $order.drinkName)
    Toggle("Extra Hot?", isOn: $order.extraHot)
  }
}

// Deep Child View: Uses @Environment to grab data from the "airwaves"
struct ReceiptView: View {
  @Environment(CoffeeOrder.self) private var order

  var body: some View {
    VStack(spacing: 12) {
      Text("Order Summary")
        .font(.title2.bold())
      Text("Drink: \(order.drinkName)")
      Text("Temperature: \(order.extraHot ? "Extra Hot" : "Regular")")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
