//
//  ViewController.swift
//  networking examples
//
//  Created by Allison Sheren McMillan on 3/2/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://www.google.com") //returns an optional so it needs to be unwrapped
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
            //pass ns data return to a string
            var stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            
            //this is by default a side thread
            //self.textView.text = stringData
            
            //in order for ui updates to happen on the nmain thread:
            //task by defaut is a side thread so the dispatch get main queue pushes us back to the main thread
            //and views you can only update from the main thread
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.textView.text = stringData
            })
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

