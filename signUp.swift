//
//  signUp.swift
//  PacficWay
//
//  Created by Aaron Ochoa on 3/30/16.
//  Copyright © 2016 Aaron Ochoa. All rights reserved.
//

import UIKit
import Foundation

class signUp: UIViewController {


    @IBOutlet weak var userEmailAddressTextField: UITextField!
    @IBOutlet weak var userPasswordTextFeild: UITextField!
    @IBOutlet weak var userConfirmPasswordTextField: UITextField!
    
    
    @IBAction func logInButtonTapped(sender: AnyObject) {
     let email = userEmailAddressTextField.text
     let password = userPasswordTextFeild.text
     let confirmPassword = userConfirmPasswordTextField.text
        
        
    if ((email ?? "").isEmpty || (password ?? "").isEmpty || (confirmPassword ?? "").isEmpty)
    {
        let myAlert = UIAlertController(title:"Alert", message: "All fields are required to fill in", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title:"Ok",style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        return
        }
        
        if (password != confirmPassword){
            let myAlert = UIAlertController(title:"Alert", message: "Passwords do not match. Please try again.", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title:"Ok",style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.presentViewController(myAlert, animated: true, completion: nil)
            
            return

                    }
        func validateEmail(candidate: String) -> Bool {
            let emailRegex = "[A-Z0-9a-z._%+-]+@apu.edu$"
            return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluateWithObject(candidate)
        }
        
        if (validateEmail((email ?? "")) == false){
            let myAlert = UIAlertController(title:"Alert", message: "Not an APU email address. Please try again.", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title:"Ok",style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.presentViewController(myAlert, animated: true, completion: nil)
            
            return
        }

        
        }
    }










