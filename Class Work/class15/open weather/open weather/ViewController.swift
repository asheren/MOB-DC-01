//
//  ViewController.swift
//  open weather
//
//  Created by Allison Sheren McMillan on 3/9/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherDescription: UILabel!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    
    @IBAction func updateWeather(sender: AnyObject) {
        weatherDescription.text = "Loading..."
        
        Weather.retrieveWeather(city.text + "," + state.text) { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
        }
        
        
        //commenting out for now but this is how you'd update the weather
//        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(self.city.text),\(self.state.text)") {
//            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
//                //void in are closures. closures let us run things as other things finish so it's async
//                
//                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
//                    if let weather = weatherDict["weather"] as? NSArray {
//                        if let firstItem = weather[0] as? NSDictionary {
//                            if let description = firstItem["description"] as? NSString {
//                                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                                    self.weatherDescription.text = description
//                                })
//                            }
//                        }
//                    }
//                }
//            })
//            task.resume()
//        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //runs only after code in weather.swift executes and weather object is created
        
        Weather.retrieveWeather("washington,dc") { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("the temperature is \(weather.fahrenheit)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

