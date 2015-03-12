//
//  ViewController.swift
//  whisperer
//
//  Created by Allison Sheren McMillan on 3/11/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var whisper: UITextView!
    
    @IBOutlet weak var category: UITextField!
    
    @IBAction func saveWhisper(sender: AnyObject) {
        var whisperP = PFObject(className: "Whisper")
        whisperP["whisper"] = self.whisper.text
        whisperP["user"] = "Tedi"
        whisperP["category"] = self.category.text
        
        whisperP.saveInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
                if(success) {
                    println("whisper saved successfully!")
                    self.whisper.text = ""
                    self.category.text = ""
                }else {
                    println(error.description)
                }
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

