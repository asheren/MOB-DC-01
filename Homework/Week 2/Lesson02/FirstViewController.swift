//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBAction func helloWorldLabelChange(sender: AnyObject) {
        textLabel.text = "Hello World"
    }
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’ */
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBAction func nameAndAgeOutputButton(sender: AnyObject) {
        var myNameandAge = NameandAge()
        myNameandAge.name = nameTextField.text
        myNameandAge.age = ageTextField.text.toInt()!
        textLabel.text = myNameandAge.stringrepresentation()
    }
    /*
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    */
    
    @IBAction func drinkAndDriveButton(sender: AnyObject) {
        var myNameandAge = NameandAge()
        myNameandAge.age = ageTextField.text.toInt()!
        
        if myNameandAge.age > 21 {
            println("You can drink")
        }else if myNameandAge.age > 18{
            println("you can vote")
        }else if myNameandAge.age > 16{
            println("You can drive")
        }
    }
    
    /*
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    */
    
    @IBAction func specificDrinkAndDriveButton(sender: AnyObject) {
        var myNameandAge = NameandAge()
        //need to then unwrap the int cause i'm getting a nil optional error
        myNameandAge.age = ageTextField.text.toInt()!
        
        if myNameandAge.age > 21 {
            println("You can drive, vote and drink (but not at the same time!)")
        }else if myNameandAge.age > 18 && myNameandAge.age < 21 {
            println("you can vote")
        }else if myNameandAge.age > 16 && myNameandAge.age < 18 {
            println("You can drive")
        }
    }
    
    
    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
}
