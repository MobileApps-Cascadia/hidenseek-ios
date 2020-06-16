//
//  ViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 4/10/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var signupButton: UIButton!
 
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

    // MARK: - Navigation

      // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          // Get the new view controller using segue.destination.
          // Pass the selected object to the new view controller.
         //let hostJoinMatchViewController = segue.destination as! UITabBarController
          
    }
      
    
    
    @IBAction func loginButton(_ sender: Any) {
        //check textfields
        //signin user when available
    
            
            //self.performSegue(withIdentifier: "toHostJoinMatchStoryboardSegue", sender: self)
    }
    
    /*Perform actions when the return key is pressed*/
    /*   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           if textField == emailTextField {
               //change cursor from username to password textfield
              // self.userName = textField.text ?? "no username"
               passwordTextField.becomeFirstResponder()
           } else if textField == passwordTextField {
             self.view.endEditing(true)
           }
           return true
        }*/
    //MARK: - UITextFieldDelegate  methods
       func textFieldShouldBeginEditing(_ textField : UITextField) -> Bool{
           print("TextField did begin editing method called")
           return true
       }
}


   
