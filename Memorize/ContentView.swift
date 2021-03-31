//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Ferracioli on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    let roundedRectangle = RoundedRectangle(cornerRadius: 10.0)
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                roundedRectangle
                    .fill(Color.white)
                roundedRectangle
                    .stroke(lineWidth: 3.0)
                Text(card.content)
            } else {
                roundedRectangle
                    .fill()
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
