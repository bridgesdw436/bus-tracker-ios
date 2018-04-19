//
//  SignInViewController.swift
//  Bus Tracker
//
//  Created by Jamone Kelly on 3/29/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func preformLogin(_ sender: Any) {
        guard let signInTxtFld = signInTextField.text else {
            fatalError("Text not available")
        }
        
        guard let passwordTxtFld = passwordTextField.text else {
            fatalError("Text not available")
        }
        
        if signInTxtFld.isEmpty || passwordTxtFld.isEmpty {
            errorLabel.isHidden = false
            errorLabel.text = "Email or ID not valid"
        } else {
            Auth.auth().signIn(withEmail: signInTxtFld, password: passwordTxtFld) { (user, error) in
                
                if let errorItem = error {
                    self.errorLabel.isHidden = false
                    self.errorLabel.text = errorItem.localizedDescription
                } else {
                    self.performSegue(withIdentifier: "signin2busSelection", sender: self)
                }
            }
        }
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
