//
//  ScoreView.swift
//  Code History
//
//  Created by Hamid Kouidri on 25/09/2023.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                VStack {
                    Text("Final Score:").font(.body)
                    Text("\(viewModel.percentage)%").font(.system(size: 50))
                }
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses)✅").font(GameFont.questionFont)
                    Text("\(viewModel.incorrectGuesses)❌").font(GameFont.questionFont)
                }.font(.system(size: 30))
                
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: { BottomTextView(str: "Re-take Quiz") })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
}
