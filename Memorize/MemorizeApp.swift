//
//  MemorizeApp.swift
//  Memorize
//
//  Created by MZS01-KYOUNGH on 2023/04/14.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
