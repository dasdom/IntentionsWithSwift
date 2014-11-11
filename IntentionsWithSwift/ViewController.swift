//
//  ViewController.swift
//  IntentionsWithSwift
//
//  Created by dasdom on 03.06.14.
//  Copyright (c) 2014 dasdom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var modelContainer: ModelContainer
    var contentView: View!
    var reverseIntention: ReverseIntention!
    var uppercaseIntention: UppercaseIntention!
    var observeIntentionForTextField: ObserverIntention!
    var observeIntentionForLabel: ObserverIntention!
    var dismissOnEnterIntention: DismissOnEnterIntention!
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        modelContainer = ModelContainer()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience override init() {
        self.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        contentView = View()
        
        let person = Person(name: "Dominik")
        modelContainer.model = person
        
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        reverseIntention = ReverseIntention(modelContainer: modelContainer, modelKeyPath: "name", textField: contentView.textField)
        uppercaseIntention = UppercaseIntention(modelContainer: modelContainer, modelKeyPath: "name", textField: contentView.textField)
        dismissOnEnterIntention = DismissOnEnterIntention()
        
        observeIntentionForTextField = ObserverIntention(sourceObject: modelContainer, sourceKeyPath: "model.name", targetObject: contentView.textField, targetKeyPath: "text")
        observeIntentionForLabel = ObserverIntention(sourceObject: modelContainer, sourceKeyPath: "model.name", targetObject: contentView.label, targetKeyPath: "text")
        
        contentView.reverseButton.addTarget(reverseIntention, action: "reverse", forControlEvents: .TouchUpInside)
        contentView.uppercaseButton.addTarget(uppercaseIntention, action: "uppercase", forControlEvents: .TouchUpInside)
        
        contentView.textField.delegate = dismissOnEnterIntention
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
