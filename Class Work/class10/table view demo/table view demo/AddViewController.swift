//
//  AddViewController.swift
//  table view demo
//
//  Created by Allison Sheren McMillan on 1/28/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

//protocols are usually nouns and not actions
protocol Campus {
    //protocol needs a function and we're going to pass in the argument of campus name as a string
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addTextBox: UITextField!
    
    @IBOutlet weak var errorMessage: UITextField!
    
    @IBOutlet weak var hiddenLabel: UILabel!
    //sets the delegate and then makes it an optional because we're not ALWAYS passing something from another view controller. this is really referring to the first view controller.
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        //now referencing the function from the first view controller into this view controller and you're adding the campus from the textbox which is the outlet text field
        
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func pressPostButton(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
        //default center means you're pulling the main notification center
        //use postnotification name and then name the posting notification as a string without any spaces... that's what we're calling our notification. we'll use it on the notification listner. make sure it's descriptive.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        self.hiddenLabel.hidden = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "inhideCurrentLabels:",
            name: "unhideHiddenLabels",
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textHasChanged:", name: UITextFieldTextDidChangeNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
    func textHasChanged(notificiation: NSNotification) {
        println("Hooray, text has change")
    }
    
    func unhidedCurrentLabels(notification: NSNotification) {
        self.hiddenLabel.hidden = false
        println("triggered unhideHidenLabels notification")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.addTextBox.text.isEmpty {
            textField.resignFirstResponder()
            errorMessage.text = "Fill in something silly"
            self.errorMessage.hidden = false
        }else {
            self.errorMessage.hidden = true
        }
        return true
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
