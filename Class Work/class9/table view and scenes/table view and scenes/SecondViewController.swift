//
//  SecondViewController.swift
//  table view and scenes
//
//  Created by Allison Sheren McMillan on 1/26/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //to go back to the last first view through the navigation controller.
    @IBAction func goBacktoFirstVC(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
        //can do self.navigationController?.popRootViewCOntoller (or something like that) to go to the root vc
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
