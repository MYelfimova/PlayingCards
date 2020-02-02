//
//  ViewController.swift
//  PlayingCard
//
//  Created by Maria Yelfimova on 1/27/20.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...52 {
            if let card = deck.draw() {
                print(card)
            }
        }
        
        
    }


}

