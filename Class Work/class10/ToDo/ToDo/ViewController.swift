//
//  ViewController.swift
//  ToDo
//
//  Created by Allison Sheren McMillan on 1/28/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

protocol ToDo {
    func addTaskToArray(taskName: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var toDoListItemField: UITextField!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//     //   toDoList.append(taskName)
//        
////        for i in toDoList{
////            println(i)
////        }
//    }
    
    var delegate: ToDo?
    
    @IBAction func addListItemButton(sender: AnyObject) {
        //to do list item add
        self.delegate?.addTaskToArray(toDoListItemField.text)
        self.dismissViewControllerAnimated(true, completion: nil)
        
        
        //from previous task
//        for toDos in toDoList {
//            println(toDos)
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



