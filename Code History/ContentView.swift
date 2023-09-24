//
//  ContentView.swift
//  Code History
//
//  Created by Reuben Kouidri on 23/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.custom("Helvetica", size: 12))
                .bold()
                .padding(12)
                .border(Color.white, width: 2.0)
        }
            
        // VStack example
        VStack(alignment: .center, spacing: 10) {
            Text("I'm having a great time at...")
                .font(Font.custom("Helvetica", size: 12))  // takes precedent
            Text("Codecademy!")
                .foregroundColor(Color.blue)
                .bold()
        } 
            .font(Font.custom("Arial", size: 12))  // this applies to all child Views in VStack (respecting precedence)
        
        HStack(alignment: .top, spacing: 5, content: {
            Text("This is a HStack")
                .frame(width: 95, height: 100, alignment: .center)
                .defaultHoverEffect(.highlight)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                .background(Color.blue)
            Text("Second View")
                .frame(width: 95, height: 100, alignment: .center)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                .background(Color.orange)
            Text("Third View")
                .frame(width: 95, height: 100, alignment: .center)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                .background(Color.red)
        }) .border(Color.white)
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
            VStack {}
                .frame(width: 100, height: 100)
                .background(Color.blue)
            VStack {}
                .frame(width: 50, height: 50)
                .background(Color.yellow)
        }
            .font(.title)
            .foregroundColor(.green)
            .border(Color.black)
        
        VStack {
            Text("Welcome to Code History!")
                .font(.subheadline)
                .padding()
            Button(action: {
                print("Clicked")
            }, label: {
                Text("Click me")})
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
