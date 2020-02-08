//
//  PlayingCardDeck.swift
//  PlayingCardDrawing
//
//  Created by Maria Yelfimova on 2/8/20.
//  Copyright © 2020 Maria Yelfimova. All rights reserved.
//

import Foundation
struct PlayingCardDeck {
    
    private(set) var cards = [PlayingCard]()
    
    // I want to start with a full deck, so I need an init method
    init(){
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
    
}
extension Int {
    var arc4random: Int {
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}
