//
//  ChangeIntention.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 04.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class ChangeIntention: NSObject {
    var modelContainer: ModelContainer
    var modelKeyPath: String
    var textField: UITextField
    
    init(modelContainer: ModelContainer, modelKeyPath: String, textField: UITextField) {
        self.modelContainer = modelContainer
        self.modelKeyPath = modelKeyPath
        self.textField = textField
    }
    
}
