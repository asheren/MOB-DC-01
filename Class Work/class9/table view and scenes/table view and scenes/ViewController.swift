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
        initiateRightSwipeOnRedBox()
        initiateDoubleTapOnRedBox()
    }
    
    //refactored so that above is a function that is called and then all the things that need to happen in the function are below
    
    //action should run an event so it should always be past tense
    
    func initiateDoubleTapOnRedBox() {
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        dTap.numberOfTapsRequired = 2
        
        self.swipeView.addGestureRecognizer(dTap)
        
    }
    
    //FUNCTIONS CAN NEVER BE IN A FUNCTION
    func doubleTapped(sender: UITapGestureRecognizer) {
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController
        self.presentViewController(thirdVC, animated: true, completion: nil)
        //expects a string which is the id of the view controller and the string "thirdVC" goes into the identity inspector in the id spot
        
        //then you need to typecast it "as" the file you're going to
        
        //for the self. method... thirdVC is the controller we want to connect it to. animate- always yes so that it animates and doesn't just show up, completion nil which means when the view controller is done coming up then they can run a function. so instead of nil you can put a function there.
        
        //commented out so that we could change this function to take us to the next view controller (segue functionality programmatically instead of drag and drop).
//        UIView.animateWithDuration(1.0, animations: {
//            self.swipeView.backgroundColor = UIColor.blueColor()
//        })
    }
    
    func initiateRightSwipeOnRedBox() {
        
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
        self.performSegueWithIdentifier("showSecondVC", sender: self)
        //commented out so that we can do example of segue connection
        //self.resultsLabel.text = "You swiped right"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

