//
//  Animal.swift
//  CodingDemoC6
//
//  Created by Allison Sheren McMillan on 1/14/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import Foundation

class Animal {
    //don't forget to specify the type of the variable
    var species:String = ""
    var name:String = ""
    
    //in the function need to say that it's a string
    func stringRepresentation() -> String{
        //and then need to specify that it'll return something. needs to be return in project (as opposed to println in playground) because in a project, it'll just return that in the debugger area and not in the actual method
        return("The animal is a \(self.species), its name is \(self.name)")
    }
}

