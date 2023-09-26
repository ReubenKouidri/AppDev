//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Reuben Kouidri on 25/09/2023.
//

import Foundation


struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        return (correctGuesses * 100) / (correctGuesses + incorrectGuesses)
    }
    
}
