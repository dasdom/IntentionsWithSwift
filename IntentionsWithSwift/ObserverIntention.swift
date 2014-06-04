//
//  ObserverIntention.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 04.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class ObserverIntention : NSObject {
    var sourceObject: AnyObject
    var sourceKeyPath: String
    var targetObject: AnyObject
    var targetKeyPath: String
 
    init(sourceObject: AnyObject, sourceKeyPath: String, targetObject: AnyObject, targetKeyPath: String) {
        self.sourceObject = sourceObject
        self.sourceKeyPath = sourceKeyPath
        self.targetObject = targetObject
        self.targetKeyPath = targetKeyPath
        
        super.init()
        
        self.updateValue()
        self.sourceObject.addObserver(self, forKeyPath:self.sourceKeyPath, options:nil, context:nil)
    }
    
    deinit {
        self.sourceObject.removeObserver(self)
    }
    
    override func observeValueForKeyPath(keyPath: String!, ofObject object: AnyObject!, change: NSDictionary!, context: CMutableVoidPointer) {
        if keyPath == sourceKeyPath {
            updateValue()
        }
    }
    
    func updateValue() {
        var value : AnyObject! = sourceObject.valueForKeyPath(sourceKeyPath)
        targetObject.setValue(value, forKey: targetKeyPath)
    }
    
}