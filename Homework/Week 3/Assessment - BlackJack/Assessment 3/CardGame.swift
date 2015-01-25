//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation
protocol BlackJack {
    var deal: Bool { get set }
    // Require a deal method
    
    func firstHand -> Int
    // Require a first hand method
}

class CardGame: BlackJack {
    var deal: Bool = true
  
   var myPlayer = Player()
    var total = 0
    func firstHand -> Int {
        let rand1 = Int(arc4random(12))
        let rand2 = Int(arc4random(12))
        return rand1 + rand2
    }
    
    func CPU -> Int {
       let cpu = Int(arc4random(12...21))
    }
}