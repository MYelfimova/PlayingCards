//
//  ViewController.swift
//  PlayingCardDrawing
//
//  Created by Maria Yelfimova on 2/8/20.
//  Copyright © 2020 Maria Yelfimova. All rights reserved.
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



