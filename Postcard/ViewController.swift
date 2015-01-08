//
//  ViewController.swift
//  Postcard
//
//  Created by RICHARD CHAU on 12/11/14.
//  Copyright (c) 2014 RICHARD CHAU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //creates a reference to the UI element
    //IBOutlet - compiler directive
    //weak pointer
    //var variable pointer
    //name of variable
    // : UILable type
    //! is optional, unwrapping
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //IBAction - compiler directive for calling function when button is pressed
    //func - defines function
    //name of function
    //sender - is the reference to the button object, it is passed in so it can be accessed within the function.
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        enterMessageTextField.text = "";
        
        //calls this function to make keyboard go away
        
        enterMessageTextField.resignFirstResponder();
    }
//adding a comment
    
}

