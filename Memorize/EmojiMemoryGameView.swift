//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Lucas Ferracioli on 29/03/21.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
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
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    let roundedRectangle = RoundedRectangle(cornerRadius: 10.0)
    
    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                roundedRectangle
                    .fill(Color.white)
                roundedRectangle
                    .stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            } else {
                roundedRectangle
                    .fill()
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
        .font(.system(size: fontSize(for: size)))
    }
    
    // MARK: - Drawing Constants
    
    let edgeLineWidth: CGFloat = 3.0
    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75
    }
}

struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
