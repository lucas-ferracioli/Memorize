//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Lucas Ferracioli on 29/03/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
