// Playground - noun: a place where people can play

import UIKit

protocol Flight {
    var wings: Bool { get set } //required to tell xcode if a protocol instance is a get, set or both.
    var beakSize: Int { get set }
    //requires that an animail that is part of the protocol must have an animal argument and then it must be a boolean
    func canFly(animal: Animal) -> Bool
}

protocol Talk {
    //method of speak that returns a string (-> thing means that that is the thing it must return)
    func speak() -> String
}

class Human: Animal, Talk {
    func speak() -> String{
        return "Hello World"
    }
}

//you call a protocol the same way you call a class. and this call the rules from the protocol
class Penguin: Flight {
    var wings = true
    //need to define everything that's in the protocol in the class so that the class conforms to the protocol
    var beakSize = 6
    func canFly(animal: Animal) -> Bool{
        return false
    }
}
//classes can also be part of a protocol so you can have
//class Animal: Flight (but then need to change below so that you have all the instances you need

class Animal {
    //best practice is to put these in the init as default values and not have them up at the top like this.
    var legs: Int = 4
    var fur: Bool = true
    var hasClaws: Bool
    
    init(hasClaws: Bool, legs: Int) {
        //in init is best place to set defaults
      self.hasClaws = hasClaws
      self.legs = legs
    }
    
    func speak() {
        println("hello world")
    }
    
    func describeAnimal() {
        println("this animal has \(self.legs) legs")
    }
}



class Dog: Animal {
    //one would think the below overrides var fur but it errors out.
    //override var fur = true
    //properties have two stages. where you set the property and where you get the property. need to be explicit when overriding properties but saying how we're going to override the property.
    //so below, we need to say what type the var is and then specifically override what the get is and what the set is.
    override var fur: Bool {
        get {
            //return whatever the fur variable is set as originally
            return super.fur
        }
        set {
            //override the inherited property to the new value set by the sub class
            //fur is the property
            //super is we're overriding whatever we're getting from the top (super class)
            //newValue is standard temporary value
            super.fur = newValue
        }
        
    }
    
    override func speak() {
        println("woof woof")
    }
}

var tedi = Animal(hasClaws: true, legs: 2)
var ena = Dog(hasClaws: true, legs: 4)
ena.speak()
ena.fur
ena.fur = true

//changes the number of legs
var skippy = ena
ena.legs
skippy.legs = 5
ena.legs


struct Rectangle {
    //no default values assigned in a struct as opposed to a class where you have to do init(width: Int) etc.
    //by default struct inits with all the parameters we give it
    var width: Int
    var height: Int
    
    func getArea() -> Int {
        return width * height
    }
}

func doesAnimalHaveCLaws(animal: Animal) -> Bool {
    return animal.hasClaws
}

//let tedi = Animal(hasClaws: true, legs: 2)
doesAnimalHaveCLaws(tedi)

doesAnimalHaveCLaws(ena)


let myRectangle = Rectangle(width: 50, height: 100)

//doesn't change the width because they're two different things

var myOtherRectangle = myRectangle
myOtherRectangle.width = 70
myRectangle.width

myRectangle.getArea()
myOtherRectangle.getArea()

struct Door {
    var width: Int
    var height: Int
    var x: Int
    var y: Int
}

class House {
    var door: Door
    
    init(door:Door){
        self.door = Door(width: 50, height: 100, x: 100, y: 100)
    }
}



