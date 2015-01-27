///Users/allisonmcmillan/projects/MOB-DC-01/Class Work/class9/table view and scenes/table view and scenes/SecondViewController.swift
//  ThirdViewController.swift
//  table view and scenes
//
//  Created by Allison Sheren McMillan on 1/26/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func dismissModal(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
