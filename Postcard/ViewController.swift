//
//  ViewController.swift
//  Postcard
//
//  Created by Olivia Eakin on 4/9/15.
//  Copyright (c) 2015 LightningCastleEntertainment. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton){
        
        messageLabel.hidden = false
        
        messageLabel.text = enterMessageTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder() // makes the keyboard go away!
        
       mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

