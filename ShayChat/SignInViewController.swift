//
//  SignInViewController.swift
//  ShayChat
//
//  Created by Merritte on 10/25/16.
//  Copyright © 2016 Merritte. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func startChattingTapped(_ sender: AnyObject) {
        
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("We tried to sign in")
            if error != nil {
                print("------------Hey, we have an error:\(error)-------------")
            } else {
                print("Signed in successfully")
            }
        })
        
    }
    
}

