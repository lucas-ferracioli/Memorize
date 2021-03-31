//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lucas Ferracioli on 30/03/21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷", "💀", "🦖"]
        let randomPairs = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: randomPairs) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
