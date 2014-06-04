//
//  View.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 03.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class View: UIView {
    var textField: UITextField
    var reverseButton: UIButton
    var uppercaseButton: UIButton
    var label: UILabel
    
    init(frame: CGRect) {
        textField = UITextField()
        textField.setTranslatesAutoresizingMaskIntoConstraints(false)
        textField.borderStyle = .RoundedRect
        
        reverseButton = UIButton.buttonWithType(.System) as UIButton
        reverseButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        reverseButton.setTitle("Reverse", forState:.Normal)
        
        uppercaseButton = UIButton.buttonWithType(.System) as UIButton
        uppercaseButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        uppercaseButton.setTitle("Uppercase", forState:.Normal)

        label = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        super.init(frame: frame)

        backgroundColor = UIColor.lightGrayColor()

        addSubview(textField)
        addSubview(reverseButton)
        addSubview(uppercaseButton)
        addSubview(label)
        
        var viewsDictionary = ["textField": textField, "reverseButton": reverseButton, "uppercaseButton": uppercaseButton, "label": label]
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-20-[textField(==label)]-20-|", options: nil, metrics: nil, views: viewsDictionary))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-40-[textField(40)]-20-[reverseButton(40)]-20-[label(30)]", options: .AlignAllLeft, metrics: nil, views: viewsDictionary))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-40-[textField(40)]-20-[uppercaseButton(==reverseButton)]", options: .AlignAllRight, metrics: nil, views: viewsDictionary))
    }
    
    convenience init() {
        self.init(frame: CGRectZero)
    }
    
}
