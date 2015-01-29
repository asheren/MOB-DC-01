//
//  TableViewController.swift
//  table view demo
//
//  Created by Allison Sheren McMillan on 1/28/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

//need to set the protocol here
class TableViewController: UITableViewController, Campus {
    
    var gaCampuses = ["Washington DC", "New York", "Los Angeles", "Hong Kong", "Atlanta"]
    
    func addCampus(campusName: String) {
        //in order to add the campus name to that list
        self.gaCampuses.append(campusName)
    }

    @IBAction func addCampus(sender: AnyObject) {
        //first need to find the view controller and make sure to put the id of the scene that we're connecting to after the instantiate methods
        var addVC = self.storyboard?.instantiateViewControllerWithIdentifier("addVC") as AddViewController
        
        //to hook up the second view controller
        self.presentViewController(addVC, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections. NEED TO SET THIS

        return 1
    }
    /*
    6. Return the array size under the tableView that has the numberOfRowsInSection paremeter. Ex: */
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Sets the number of cells in the table to equal the number of items in our array
        // Return the number of rows in the section.
        return self.gaCampuses.count
    }
    /*
    7. Update the tableView method with the cellForRowIndexPath paremeter to update all the cells with the array data. ex:
    */
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        // Configure each cell here. Think of it as a loop. goes through each cell and populates each cell with the array number
        //access the cell and then give it a text label (because you have access to the cell, you can change anything about the cell ie- color, text, etc.
        //textLabel is an optional
        //then equals your array and then index path (lays out the number of cells) and then .row which returns the index path row which is what is in that specific cell based on the array. it's the cell number that you're at right now (cause it continues to fire until all the cells are filled) 
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.blueColor()
        }
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        //check if th user action is delete (which is automatically swipe left)
        if editingStyle == .Delete {
            //then removing it at index which is how you delete and you delete the indexPath.row value
            self.gaCampuses.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
