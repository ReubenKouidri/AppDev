//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Reuben Kouidri on 24/09/2023.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let buttonFont = Font.custom("Helvetica", size: 16)

    var body: some View {
        Text(choiceText)
            .font(buttonFont)
            .padding()
            .bold()
            .border(accentColor, width: 4)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Hello")
}
