//
//  Person.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 03.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String = "" {
        willSet {
            println("\(newValue)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}
