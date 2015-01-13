//
//  ViewController.swift
//  IB Coding Demo
//
//  Created by Allison Sheren McMillan on 1/12/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func changeLabel(sender: AnyObject) {
        nameLabel.text = nameTextField.text
    }
    @IBAction func changeLabelOnDrag(sender: UISlider) {
        //changes slider value to the value of the slider
        let sliderValue = Int(sender.value)
        //to set label to equal value of the slider
        nameLabel.text = "\(sliderValue)"
    }
    //after changeLabel and clangeLabelOnDrag, label is changed either to a number based on the slider or based on the text typed into the text field
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("testing loaded view")
    }

}

