// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20]

//second way to create an array. must tell it what kind of array we want if we have an empty array
var secondArray: [Int] = []

var stringArray: [String] = []


//to access the third item in the array. Just plain old programming here.
myArray[2]

myArray.first

myArray.last

//it's an optional so you need to unwrap it.
myArray.last!

//adds it to the end of the separate array
secondArray.append(20)
secondArray

//add 100 after the 2nd element
myArray.insert(100, atIndex: 2)

myArray.count
myArray.insert(50, atIndex: myArray.count - 1)



