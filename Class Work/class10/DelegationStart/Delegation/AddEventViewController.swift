//
//  AddEventViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 28/01/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

<<<<<<< HEAD
protocol Event
    
=======
protocol EventProtocol {
    func addEvent(newEvent:Event)
}
>>>>>>> 321f50e7312ea2bea9bcd16fde7052897e269cf3

class AddEventViewController: UIViewController {

    @IBOutlet var nameLabel: UITextField!
    @IBOutlet var locationLabel: UITextField!
    
    var delegate:EventProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add Cancel button on the left and save button on the right
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "dismiss")
        let saveButton = UIBarButtonItem(title: "Save", style: UIBarButtonItemStyle.Plain, target: self, action: "save")

        // set navigation items
        self.navigationItem.title = "Add Event"
        self.navigationItem.leftBarButtonItem = cancelButton
        self.navigationItem.rightBarButtonItem = saveButton
    }
    
    func save() {
<<<<<<< HEAD
        let newEvent = Event(name: nameLabel.text, location: locationLabel.text
=======
        let newEvent = Event(name: nameLabel.text, location: locationLabel.text)
        self.delegate?.addEvent(newEvent)
>>>>>>> 321f50e7312ea2bea9bcd16fde7052897e269cf3
        dismiss()
    }
    
    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
