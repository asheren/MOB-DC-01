//
//  ViewController.swift
//  CodingDemoC6
//
//  Created by Allison Sheren McMillan on 1/14/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets at the top. functions below that

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var animalInformation: UILabel!
    
    //connect the button as an action
    @IBAction func createCat(sender: AnyObject) {
        //pull in a variable as an instance of the class
        var myAnimal = Animal()
        //set the species because instructions say it should be pre-set
        myAnimal.species = "cat"
        //specify that the variable method is text and it is what you put in the text box (which I named textField)
        myAnimal.name = textField.text
        //then take the label which will change based on info entered (I named it animalInformation), note what it is (text) and then equals what you want to show up (instance.function)
        animalInformation.text = myAnimal.stringRepresentation()
    }
    @IBAction func createDog(sender: AnyObject) {
        var myAnimal = Animal()
        myAnimal.species = "dog"
        myAnimal.name = textField.text
        animalInformation.text = myAnimal.stringRepresentation()
    }
}

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
