//
//  ContentView.swift
//  Code History
//
//  Created by Reuben Kouidri on 23/09/2023.
//

/*
 - sunshine or shade
 - question around exposure and how hardy it is: are you risk averse or adrenaline seeker or like a challenge?
 - Have you ever, or do you currently play a team sport?
 - How many Sundays do you spend in bed per month : 0, 1-2, 3, 4?
 - Do you prefer a steamroom or sauna?
 - Hot or cold climate?
 - Are you afraid of heights?
 -
 */

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(GameFont.smallFont)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(NavigationLink(
            destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
            isActive: .constant(viewModel.gameIsOver),
            label: { EmptyView() } )
        )
            .foregroundColor(.white)
            .navigationBarHidden(true)  // user can't see the 'Back' button which will take them to the home screen and lose progress
            .environmentObject(viewModel) // new line
        }
}

#Preview {
    GameView()
}
