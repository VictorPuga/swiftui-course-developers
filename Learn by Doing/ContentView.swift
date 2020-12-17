//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Víctor Manuel Puga Ruiz on 16/12/20.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Body
  var cards: [Card] = cardData
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 20) {
        ForEach(cards) { card in
          CardView(card: card)
        }
      }
      .padding(20)
    }
  }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(cards: cardData)
  }
}
