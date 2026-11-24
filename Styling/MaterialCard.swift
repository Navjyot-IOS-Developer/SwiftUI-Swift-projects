//
//  MaterialCard.swift
//  Styling
//
//  Created by Nav on 24/11/26.
//

import SwiftUI

struct MaterialCard: View {
    var body: some View {
      ZStack {
        Image(systemName: "photo.fill")
          .resizable()
          .scaledToFit()
          .ignoresSafeArea()
        RoundedRectangle(cornerRadius: 12)
          .fill(.regularMaterial)
          .frame(height: 120)
          .overlay(Text("Regular Material").font(.headline))
          .padding()
      }
        
    }
}

#Preview {
    MaterialCard()
}
