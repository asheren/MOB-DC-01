//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var evenOrOddLabel: UILabel!
    
    @IBAction func calculateNumberButton(sender: AnyObject) {
        let number = numberTextField.text.toInt()
        if number! % 2 == 0 && number != 0 {
            println("This is an even number")
        }else { println("This is not an even number")
        }
    }
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
