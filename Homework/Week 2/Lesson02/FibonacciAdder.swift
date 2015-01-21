//
//  FibonacciAdder.swift
//  Lesson02
//
//  Created by Allison Sheren McMillan on 1/18/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {

    func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) -> String {
        //pretty sure having 9 in there isn't correct, thought it might be n but that was erroring out because n wasn't set to anything
        var fibNum = indexOfFibonacciNumber, current = 0, next = 1, result = 0
        for index in 0..<fibNum {
            let tempNum = current
            current = next
            next = tempNum + current
            result = tempNum
        }
        return "\(result)"
        
   }
}
//The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
