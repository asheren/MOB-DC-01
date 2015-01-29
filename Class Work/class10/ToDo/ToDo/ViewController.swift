//
//  ViewController.swift
//  ToDo
//
//  Created by Allison Sheren McMillan on 1/28/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toDoListItemField: UITextField!
    var toDoList: [String] = ["laundry", "supermarket", "code", "watch tv", "take a walk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        toDoList.append("relax")
        
        for i in toDoList{
            println(i)
        }
    }
    
    
    @IBAction func addListItemButton(sender: AnyObject) {
        //to do list item add
        var task = toDoListItemField.text
        toDoList.append("/task")
        
        for toDos in toDoList {
            println(toDos)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



