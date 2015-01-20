//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var numberSumTotal: UILabel!
    
    @IBAction func addActionButton(sender: AnyObject) {
        //I think this would work if I could figure out the last part of how to unwrap an int.
        var total = 0
        let current = numberInput.text.toInt()!
        let value = numberSumTotal.text!.toInt()!
        total = current + value
        
        return total
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    //hint: text property on UILabel
}
