//
//  SecondViewController.swift
//  TabOnList
//
//  Created by appcamp on 19/07/15.
//  Copyright (c) 2015 marta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var detailsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
    textField.resignFirstResponder()
    return true}
    
    @IBAction func addItemButton(sender: UIButton) {if ItemsMgr()
        
    {ItemsMgr.addItem(nameTextField.text, details: detailsTextField.text)
        }
    }
    
    }

}

