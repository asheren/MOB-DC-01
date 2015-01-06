// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//String
"this is a string"

//Doubles and Floats
54.76

//boolean
true
false

//variables: inferred and mutable
var myVariable = "Hello world"
println(myVariable)

var mySecondVariable: String = "Hello world again"
mySecondVariable = "10"

var x = 10
x
println(x)

var y: Float = 10.1
y

var z = 4
z-3
x - z
x * z
x / z
x % z


//Integers
5
10
15

// Constants
//Immutable
let myName = "Allison"
myName

var amIHere: String? = "Yes"
// ? (question mark) makes it an optional
println(amIHere)

//unwrap it
println(amIHere!)

var thisIsHere: String?
println(thisIsHere)

/****************** Control Flow *************/
var myAge = 30
if myAge < 21 {
    println("You can't get in!")
}else if myAge == 21 {
    println("free drinks!")
}else if myAge > 21 && myAge < 25{
    ("you can drink but you can't rent a car")
}else {
    println("you can party")
}

/***** Loops ********/
//click on circle next to the eye in order to run it
for var i = 0; i < 5; ++i {
    println("code is running")
}


//string interpolation
for var i = 0; i < 5; ++i {
    println("Code is running\(i)")
}

//index loop
for index in 1...5 {
    println(index)
}

//while loop
var k = 1
while k < 10 {
    println("counting")
    ++k
}

println(k)



