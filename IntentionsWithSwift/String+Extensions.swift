//
//  String+Extensions.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 03.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import Foundation

extension String {
    var reverse: String {
        var reverseString = String()
        for character in self {
            reverseString = String(character) + reverseString
        }
        return reverseString;
    }
    
}