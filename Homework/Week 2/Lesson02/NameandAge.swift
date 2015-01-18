//
//  NameandAge.swift
//  Lesson02
//
//  Created by Allison Sheren McMillan on 1/18/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class NameandAge {
    var name:String = ""
    var age = 0

    func stringrepresentation() -> String{
        return("Hello \(self.name), you are \(self.age) years old!")
    }
}

