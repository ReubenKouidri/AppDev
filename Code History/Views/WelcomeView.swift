//
//  WelcomeView.swift
//  Code History
//
//  Created by Reuben Kouidri on 24/09/2023.
//

import SwiftUI


struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    VStack(alignment: .center, spacing: 0) {
                        Text("Select the answers to the following questions")
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 100, leading: 50, bottom: 20, trailing: 50))
                        Spacer()
                        Text("Ready?")
                            .padding(EdgeInsets(top: 0, leading: 50, bottom: 50, trailing: 50))
                    }
                    .font(GameFont.welcomeFont)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                    
                    NavigationLink(
                        destination: GameView(),
                        label: {BottomTextView(str:"Let's goooooo!")})
                }
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
