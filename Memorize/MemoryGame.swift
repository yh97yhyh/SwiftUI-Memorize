//
//  MemoryGame.swift
//  Memorize
//
//  Created by MZS01-KYOUNGH on 2023/04/17.
//

import Foundation

// Model
struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    init(numbersOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numbersOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    
    }
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }

}
