//
//  UppercaseIntention.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 04.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class UppercaseIntention: ChangeIntention {
    
    func uppercase() {
        let uppercase = textField.text.uppercaseStringWithLocale(NSLocale.currentLocale())
        modelContainer.model.setValue(uppercase, forKey: modelKeyPath)
    }
    
}
