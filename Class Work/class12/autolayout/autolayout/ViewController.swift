//
//  ViewController.swift
//  autolayout
//
//  Created by Allison Sheren McMillan on 2/9/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verticalSpacingBetweenPurpleGhostAndPacman: NSLayoutConstraint!
    
    
    //can change the vertical spacing through code as well.
    
    @IBAction func increaseDistanceBetweenPacmanAndGhost(sender: AnyObject) {
        self.verticalSpacingBetweenPurpleGhostAndPacman.constant = 80
        UIView.animateWithDuration(1, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

