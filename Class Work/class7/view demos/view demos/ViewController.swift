//
//  ViewController.swift
//  view demos
//
//  Created by Allison Sheren McMillan on 1/21/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myBlueSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //as soon as the view loads, this sets the background color to red
    //commented out so that we could tru the gesture recognizer below
//        UIView.animateWithDuration(3, animations: {
//            self.myBlueSquare.backgroundColor = UIColor.redColor()
//            self.myBlueSquare.alpha = 0.5
//        })
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func swipeLeftGesture(sender: UISwipeGestureRecognizer) {
        UIView.animateWithDuration(1.5, animations: {
            self.myBlueSquare.backgroundColor = UIColor.blueColor()
            self.myBlueSquare.alpha = 0.5
        })
    }
    @IBAction func swipeSquareRight(sender: UISwipeGestureRecognizer) {
        UIView.animateWithDuration(1.5, animations: {
            self.myBlueSquare.backgroundColor = UIColor.redColor()
            self.myBlueSquare.alpha = 0.5
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

