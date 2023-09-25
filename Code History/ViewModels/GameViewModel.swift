//
//  GameViewModel.swift
//  Code History
//
//  Created by Reuben Kouidri on 25/09/2023.
//

import SwiftUI


class GameViewModel: ObservableObject {

  // MARK: - Published properties
  // 2
  @Published private var game = Game()

  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }
}
