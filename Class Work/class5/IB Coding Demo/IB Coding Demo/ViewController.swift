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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("testing loaded view")
    }

}

