//
//  GameViewModel.swift
//  Code History
//
//  Created by Reuben Kouidri on 25/09/2023.
//

import SwiftUI


class GameViewModel: ObservableObject {  // we want the GameViewModel to be the brains of our view display logic
    
    var correctGuesses: Int {
        return game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        return game.guessCount.incorrect
    }
    
    // MARK: - Published properties
    // 2
    @Published private var game = Game()  // @Published wrapper allows updates to be sent to 'game'

    // MARK: - Internal properties
    // 3
    var currentQuestion: Question {  // return games current question
        game.currentQuestion
    }
      // 4
    var questionProgressText: String {  // display the game progress e.g. 3/10
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    // 1
    var guessWasMade: Bool {
         if let _ = game.guesses[currentQuestion] {
             return true
         } else {
             return false
         }
     }
    
    var gameIsOver: Bool {
      game.isOver
    }
     
    // MARK: - Internal Methods
    // 2
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    // 3
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {  // index for each question option
        if let guessedIndex = game.guesses[currentQuestion] {  // conditional binding: has a guess been made? i.e. looking for non-nil vals
            if guessedIndex != optionIndex {  // if guess 
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {  // check if guess matches answer; if so, color green
                return GameColor.correctGuess
            } else {  // if no match, return false
                return GameColor.incorrectGuess
            }
        } else {  // if no guess has been made
            return GameColor.main
        }
    }
}
