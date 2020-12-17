//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Víctor Manuel Puga Ruiz on 16/12/20.
//

import SwiftUI

// MARK: - Card Model

struct Card: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var imageName: String
  var callToAction: String
  var message: String
  var gradientColors: [Color]
}
