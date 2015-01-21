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
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBAction func addActionButton(sender: AnyObject) {
        var total = 0
        if (numberInput.text.isEmpty){
            errorMessage.text = "Please enter a valid number"
            errorMessage.hidden = false
        }
        else{
            let current = numberInput.text.toInt()!
            let value = numberSumTotal.text!.toInt()!
            numberSumTotal.text = "\(current + value)"
            errorMessage.hidden = true
        }
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    //hint: text property on UILabel
}
