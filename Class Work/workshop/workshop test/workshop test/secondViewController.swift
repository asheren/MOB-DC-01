//
//  SecondViewController.swift
//  workshop test
//
//  Created by Allison Sheren McMillan on 2/25/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

protocol Campus {
    //protocol needs a function and we're going to pass in the argument of campus name as a string
    func addCampusToArray(campusName: String)
}

// Adding the UITextFieldDelegate so we get the convenience methods for our text fields
class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var addTextBox: UITextField!
  
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        //now referencing the function from the first view controller into this view controller and you're adding the campus from the textbox which is the outlet text field
        
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var purpleBox: UIView!
    
    @IBOutlet weak var yellowBox: UIView!
    
    
    @IBAction func tapToChangeBackToYellow(sender: UITapGestureRecognizer) {
        UIView.animateWithDuration(1.5, animations: {
            self.yellowBox.backgroundColor = UIColor.blueColor()
        })
    }

    override func viewDidLoad() {
        UIView.animateWithDuration(1.5, animations: {
            self.purpleBox.backgroundColor = UIColor.purpleColor()
        })
        super.viewDidLoad()
        self.addTextBox.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
