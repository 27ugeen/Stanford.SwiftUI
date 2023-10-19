//
//  ContentView.swift
//  Memorize
//
//  Created by GiN Eugene on 16/10/2023.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🕷️","🎃","😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    let base = RoundedRectangle(cornerRadius: 12)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}







#Preview {
    ContentView()
}
