//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Reuben Kouidri on 24/09/2023.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String

    var body: some View {
        Text(choiceText)
            .font(GameFont.buttonFont)
            .padding()
            .bold()
            .border(GameColour.accent, width: 4)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Hello")
}
