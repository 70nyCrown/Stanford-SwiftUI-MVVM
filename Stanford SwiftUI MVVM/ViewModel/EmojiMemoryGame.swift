//
//  EmojiMemoryGame.swift
//  Stanford SwiftUI MVVM
//
//  Created by Антон Воронин on 19.07.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["A", "B", "C", "D", "F", "G", "H", "I", "K", "J", "L", "M", "N", "O", "P", "Q", "R", "S", "T"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
