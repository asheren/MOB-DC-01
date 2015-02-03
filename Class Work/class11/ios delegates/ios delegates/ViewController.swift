//
//  ViewController.swift
//  ios delegates
//
//  Created by Allison Sheren McMillan on 2/2/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    var gaCampuses: [String] = []
    
    @IBOutlet weak var stuffTextField: UITextField!
    @IBOutlet weak var campusesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if gaCampuses.isEmpty {
            println("your table view is empty")
            campusesTable.hidden = true
        }
        stuffTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //listens for the return key and on return key, removes the keyboard
        println("Return key pressed!")
        textField.resignFirstResponder()
        //need to return true because the function is expecting a bool.
        return true
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.gaCampuses.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.redColor()
        }
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        
        return cell
        
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            self.gaCampuses.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}


