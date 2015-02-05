//
//  ViewController.swift
//  programmatic views
//
//  Created by Allison Sheren McMillan on 2/4/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //start by building a UI view
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        //can also do var myViewFrame = CGRect(x: 50, y: 50, width: 200, height: 200) but the above is easier and better
        //50 and 50 is from the top left corner and 200 by 200 is the amount that the red square covers
        
        redBox.backgroundColor = UIColor.redColor()
        //make the view red
        redBox.layer.cornerRadius = 50
        //rounds the corners
        
        //to have redbox always be same distance from the right and top (seperated by pipe)
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        
        //right now the above doesn't have a parent. when we drag and drop, a parent is automatically set, but since we didn't do that, we need to do that programmatically
        self.view.addSubview(redBox)
        //added the parent view. self.view is the main view controller view
        
        
        //adding a label programmatically as a subview of the red square
        
        var redBoxLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 30))
        //again x and y is relative to the parent so this will be 50, 50 from the left corner of the red box (cause it's a subview)
        //if you didn't know the exact number of the frame you could to width: redBox.frame.width will take the width of the redbox frame and make the width of the label that.
        redBoxLabel.text = "Hello World"
        //added text
        redBoxLabel.textColor = UIColor.whiteColor()
        redBoxLabel.textAlignment = .Center
        //added text color
        redBox.addSubview(redBoxLabel)
        //added redboxlabel as a subview of redbox because now redbox is the parent class
        
        //most of the items have the same workflow except for a few like button
        
        var actionButton = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        //self.view.frame.width to make the width automatically the entire width of the screen. x would need to be 0 so it starts at the left corner and spans the whole width and doens't start in a bit and go off the screen
        
        //add a title to the button and you need to add a state to the button (something that happens when you drag and drop)
        //states are normal, when you first touch it, when you let go, etc.
        //and can change the title for every state of the buttom
        actionButton.setTitle("Click me", forState: .Normal)
        //then need to add the actual what happens. target is self because it's being clicked, action is the function that's being called
        actionButton.addTarget(self, action: "pressedCodedButton:", forControlEvents: .TouchUpInside)
        //dont forget the colon after the action above!! needs to relate to sender or something in that way
        //now we need to build our function for this
        
        actionButton.backgroundColor = UIColor.yellowColor()
        
        //to get green button to be in the middle and stretch the width of the screen when the phone is horizontal
        actionButton.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        //finally need to add it to the view
        //need self because the button is a subview of the entire view, not a subview of redbox, etc.
        self.view.addSubview(actionButton)
        
        //image is the name of your image as a string
        var allisonImage = UIImage(named: "allison_computer.jpg")
        //need a ui image view in order to actually see the image
        
        
        //hiding view to focus on scroll view
//        //added ui view
//        var allisonImageView = UIImageView(image: allisonImage)
//        //to note the placement of it, need to add the frame and then cgrect
//        allisonImageView.frame = CGRect(x: 50, y: 350, width: allisonImage!.size.width/10, height: allisonImage!.size.height/10)
//        //then need to connect the parent view
//        
//        //to keep picture always by the bottom
//        allisonImageView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin
//        self.view.addSubview(allisonImageView)
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        greenBox.backgroundColor = UIColor.greenColor()
        
        
        //y needs to be y of previous one plus height
        var blueBox = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 100))
        blueBox.backgroundColor = UIColor.blueColor()
        
        
        var purpleBox = UIView(frame: CGRect(x: 0, y: 300, width: 200, height: 100))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        //need to give a background color because scroll view is by default white
        boxScrollView.backgroundColor = UIColor.grayColor()
        //need ot set content size
        //will be same width as the frame but twice as high
        boxScrollView.contentSize = CGSize(width: 200, height: 600)
        self.view.addSubview(boxScrollView)
        
        boxScrollView.addSubview(purpleBox)
        boxScrollView.addSubview(greenBox)
        boxScrollView.addSubview(blueBox)
    }
    
    //create the function and you need a sender because you need a sender whenever you have an action (either UIButton or anyObject)
    func pressedCodedButton(sender: UIButton) {
        println("Hello worlddddd")
        //make it so that when you click the button, it removes the button
        sender.removeFromSuperview()
    }

}

