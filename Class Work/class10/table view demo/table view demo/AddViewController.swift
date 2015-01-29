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
    func addCampus(CampusName: String)
}

class AddViewController: UIViewController {

    @IBOutlet weak var addTextBox: UITextField!
    
    
    //sets the delegate and then makes it an optional because we're not ALWAYS passing something from another view controller. this is really referring to the first view controller.
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        //now referencing the function from the first view controller into this view controller and you're adding the campus from the textbox which is the outlet text field
        
        self.delegate?.addCampus(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
