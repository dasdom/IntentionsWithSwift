//
//  DismissOnEnterIntention.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 04.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class DismissOnEnterIntention: NSObject, UITextFieldDelegate {
   
    func textField(textField: UITextField!, shouldChangeCharactersInRange range: NSRange, replacementString string: String!) -> Bool {
        if string == "\n" {
            textField.resignFirstResponder()
            return false
        }
        return true
    }
    
}
