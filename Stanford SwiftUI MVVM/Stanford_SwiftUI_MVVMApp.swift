//
//  Stanford_SwiftUI_MVVMApp.swift
//  Stanford SwiftUI MVVM
//
//  Created by Антон Воронин on 19.07.2022.
//

import SwiftUI

@main
struct Stanford_SwiftUI_MVVMApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
