//
//  BottomTextView.swift
//  Code History
//
//  Created by Hamid Kouidri on 25/09/2023.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(GameFont.buttonFont)
                .bold()
                .padding()
            
            Spacer()
        }.background(GameColour.accent)
    }
}

#Preview {
    BottomTextView(str: "Lets GOOOOO!")
}
