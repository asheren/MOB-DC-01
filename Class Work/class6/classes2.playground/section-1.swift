// Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var wheels = 0
    var name:String = ""
    var color:String = ""
    var numberOfSeats = 0
    var numberOfAxels = 0
    
    func go() {
        println("Vroom Vroom")
    }
    
    func inspectCar() {
        println("your car has \(self.numberOfSeats) seats and \(self.numberOfAxels) axels.")
    }
    
    //class methods
    class func aboutVehicles(){
        println("Cars are awesome")
    }
}

var myCar = Vehicle()
myCar.wheels = 4
myCar.name = "Car"
myCar.color = "Green"
myCar.numberOfSeats = 4
myCar.numberOfAxels = 4

Vehicle.aboutVehicles()

myCar.inspectCar()
