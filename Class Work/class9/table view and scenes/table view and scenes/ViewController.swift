//
//  ViewController.swift
//  table view and scenes
//
//  Created by Allison Sheren McMillan on 1/26/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var swipeView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //instantiate the object with the let and then = the class we're instantiating (the gesture is a class) and the method which is the action which is triggered on instantiation
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
        //colon means that swipeRight is a function and it's in quotes to say it takes a string
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        //direction tells you what it's expecting and then.right tells you the option that we're passing to it. can add more options like number of fingers, etc.
        
        //now associate gesture to view and expects a method swipeRight
        self.swipeView.addGestureRecognizer(swipeR)
    }
    //need to define the action we set up earlier
    //sender shold always be the same as the class that's instantiated
    func swipedRight (sender: UISwipeGestureRecognizer) {
        self.resultsLabel.text = "You swiped right"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

