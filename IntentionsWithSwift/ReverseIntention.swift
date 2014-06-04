//
//  ReverseIntention.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 03.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class ReverseIntention : ChangeIntention {
    
    func reverse() {
        modelContainer.model.setValue(textField.text.reverse, forKeyPath: modelKeyPath)
    }
    
}
