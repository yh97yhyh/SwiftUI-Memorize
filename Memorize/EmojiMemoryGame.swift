//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by MZS01-KYOUNGH on 2023/04/17.
//

import Foundation
import SwiftUI

// ViewModel
class EmojiMemoryGame {
    static let emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numbersOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }

}
