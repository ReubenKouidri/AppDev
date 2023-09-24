//
//  Game.swift
//  Code History
//
//  Created by Reuben Kouidri on 24/09/2023.
//

import Foundation

struct Game {
    private(set) var guesses = [Question: Int]()  // can read from outside struct but only write (set) from within
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false  // has the game finished?
    private let questions = Question.allQuestions.shuffled()
    var numberOfQuestions: Int {
        questions.count
    }
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    var guessCount: (correct: Int, incorrect: Int) {
         var count: (correct: Int, incorrect: Int) = (0, 0)
         for (question, guessedIndex) in guesses {
             if question.correctAnswerIndex == guessedIndex {
                 count.correct += 1
             } else {
                 count.incorrect += 1
             }
         }
         return count
     }
    
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) -> Void {
        guesses[currentQuestion] = index
    }

    mutating func updateGameStatus() -> Void {
        if currentQuestionIndex < questions.count {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }

}
