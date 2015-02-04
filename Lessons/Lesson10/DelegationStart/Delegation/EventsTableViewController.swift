//
//  EventsTableViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 28/01/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController, EventProtocol {
    // event array
    var arrEvents:[Event] = []
    
    //add ibaction to this
    func addEvent(sender: UIBarButtonItem) {
        let addEventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("addEventVC") as AddEventViewController
        AddEventViewController.delegate = self
        let navigationController = UINavigationController(rootViewController: addEventViewController)
        self. presentViewController(navigationController, animated: true, completion: nil)
    }

    @IBAction func addEvent(sender: UIBarButtonItem) {
        let addEventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("addEventVC") as AddEventViewController
        addEventViewController.delegate = self
        let navigationController = UINavigationController(rootViewController: addEventViewController)
        self.presentViewController(navigationController, animated: true, completion: nil)
    }
    
    func addEvent(newEvent: Event) {
        println("foo")
        self.arrEvents.append(newEvent)
    }

    func addEvent(newEvent: Event) {
        arrEvents.append(newEvent)
    }
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrEvents.count
    }
    
<<<<<<< HEAD
   
=======
>>>>>>> 321f50e7312ea2bea9bcd16fde7052897e269cf3
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath) as UITableViewCell
    
    // Configure the cell...
    let currentEvent = self.arrEvents[indexPath.row]
    cell.textLabel.text = currentEvent.name
    cell.detailTextLabel?.text = currentEvent.location
    
    let currentEvent = self.arrEvents[indexPath.row]
        cell.textLabel?.text = currentEvent.name
        cell.detailTextLabel?.text = currentEvent.location
    
    return cell
    }
<<<<<<< HEAD
=======

>>>>>>> 321f50e7312ea2bea9bcd16fde7052897e269cf3

}
