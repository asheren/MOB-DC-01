// Playground - noun: a place where people can play

import UIKit

//uiview is a class. frame is a default initializer. creating a view that is a rectangle and has different properties. and then CGRect is another class and the x, y, etc. are other initializers
var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//this (purpleColor) is a class method instead of an instance method. and click on the eye on the right in order to preview (if eye doesn't show up its cause something is erroring in the code and cause it's a compiled language, all of it has to work in order to see anything
view.backgroundColor = UIColor.purpleColor()

class Animal {
    //don't forget to specify the type of the variable
    var name:String = ""
    var legs: Int //don't need an amount here because it's initialized but we do have to still give it a type
    //for default properties in order to change the default you need to initialize it
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
       println("Ahhhhhh")
    }
}

//syntax for new class inheriting for its superclass
class Dog: Animal {
    var isSmart = true
    //start it with override if you want to override the default that is being inherited for methods
    override func speak() {
        println("Woof!")
    }
}

var doggie = Dog(legs: 4)
doggie.legs
doggie.speak()
doggie.isSmart
doggie.isSmart = false



