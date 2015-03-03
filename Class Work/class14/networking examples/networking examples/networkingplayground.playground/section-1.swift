// Playground - noun: a place where people can play

import UIKit
import XCPlayground

//let async code run in a playground (don't need to do this in a regular app)

XCPSetExecutionShouldContinueIndefinitely()


let url = NSURL(string: "http://www.tedi.io") //returns an optional so it needs to be unwrapped

let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
    println(data)
    println(response)
    println(error)
    })

    task.resume() //code won't run unless you tell it to restart
