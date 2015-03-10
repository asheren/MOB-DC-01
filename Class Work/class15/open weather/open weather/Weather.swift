//
//  Weather.swift
//  open weather
//
//  Created by Allison Sheren McMillan on 3/9/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import Foundation
//created new file because this is a model and all logic should be in the model
//controllers are cocoa touch, models are swift files

class Weather {
    
    //property to access the description
    var friendlyWeather: NSString?
    var fahrenheit: NSInteger?
    
    init(json: NSDictionary) {
        if let weather = json["weather"] as? NSArray {
            if let firstWeather = weather[0] as? NSDictionary {
                if let description = firstWeather["description"] as? NSString {
                    self.friendlyWeather = description
                }
            }
        }
    }
    
    class func retrieveWeather(completionHandler: ((Weather) -> Void)) {

        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=washington,dc") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                //void in are closures. closures let us run things as other things finish so it's async
                
                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
                        var weather = Weather(json: weatherDict)
                        dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            completionHandler(weather)
                        })
                }
            })
            task.resume()
        }
    
    //property to access the temperature
    }
    
}