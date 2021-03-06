//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

//these are like models. so all the logic should be here and the controller just runs the methods.

import Foundation
protocol BlackJack {
    var deal: Bool { get set }
    // Require a deal method
    
    /*
        --
            FEEDBACK
            Functions always need the ()
        --
    */
    
    func firstHand -> Int
    // Require a first hand method
}

class CardGame: BlackJack {
    var deal: Bool = true
    
    /*
        --
            FEEDBACK
            Functions always need the ()
            Try to structure your code nicer, with an equal ammount of spaces everywhere
            Use enters to seperate your variables and functions
        --
    */
  
   var myPlayer = Player()
    var total = 0
    func firstHand -> Int {
        let rand1 = Int(arc4random(12))
        let rand2 = Int(arc4random(12))
        return total = rand1 + rand2
    }
    
    func CPU -> Int {
       let cpu = Int(arc4random(12...21))
    }
}