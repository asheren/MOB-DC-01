//
//  SecondViewController.swift
//  workshop test
//
//  Created by Allison Sheren McMillan on 2/25/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var purpleBox: UIView!
    
    
    
    @IBAction func tapToChangeBackToYellow(sender: UITapGestureRecognizer) {
    }

    override func viewDidLoad() {
        UIView.animateWithDuration(1.5, animations: {
        })
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
