//
//  QuestionView.swift
//  Code History
//
//  Created by Reuben Kouidri on 25/09/2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel // new line
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(GameFont.questionFont)
                .bold()
                .padding()
                .multilineTextAlignment(.center)  // If spread over multiple lines, align left side

            Spacer()
            HStack {
                // the id \.self uses each possibleAnswer as it's own ID - can't have duplicates!
                ForEach(question.possibleAnswers.indices, id: \.self) { index in
                    Button(action: {
                        print("Your answer: \(question.possibleAnswers[index])")
                        viewModel.makeGuess(atIndex: index)
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[index])
                            .background(viewModel.color(forOptionIndex: index))
                    }
                        .disabled(viewModel.guessWasMade) // new line
                }
            }
            if viewModel.guessWasMade {
                Button(action: {viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}


#Preview {
    QuestionView(question: Game().currentQuestion)
}
