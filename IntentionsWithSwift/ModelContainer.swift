//
//  ModelContainer.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 03.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class ModelContainer : NSObject {
    var model: AnyObject!
    
    init(model: AnyObject) {
        self.model = model
    }
    
    override init() {
        self.model = nil
    }
}
