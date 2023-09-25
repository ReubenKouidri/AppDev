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
    // define new constants
    @State var mainColor = GameColour.main
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Bee"],
        correctAnswerIndex: 2
    )
    
    var body: some View {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Text("1 / 10")
                        .font(GameFont.smallFont)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text(question.questionText)
                        .font(GameFont.questionFont)
                        .bold()
                        .multilineTextAlignment(.leading)  // If spread over multiple lines, align left side
                    Spacer()
                    
                    HStack {
                        // the id \.self uses each possibleAnswer as it's own ID - can't have duplicates!
                        ForEach(question.possibleAnswers.indices, id: \.self) { index in
                            Button(action: {
                                print(question.possibleAnswers[index])
                                mainColor = index == question.correctAnswerIndex ? .green : .red
                            }, label: {
                                ChoiceTextView(choiceText: question.possibleAnswers[index])
                            })
                        }
                    }
                }
            }
            .foregroundColor(.white)
        }
}

#Preview {
    GameView()
}
