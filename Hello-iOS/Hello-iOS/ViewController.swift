//
//  ViewController.swift
//  Hello-iOS
//
//  Created by Personal on 3/29/17.
//  Copyright © 2017 Ena Markovic. All rights reserved.
//
// I followed the tutorial at:
// The code there is similar/the same to the code I have here

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: References
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text fiel's user input through delegate callbacks.
        textField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        mainLabel.text = textField.text
        textField.text = ""
    }
    
    //MARK: Actions
    @IBAction func resetLabelText(_ sender: Any) {
        mainLabel.text = "Hello World"
    }
    
}

