//
//  SignupViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 4/23/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         // self.navigationItem.title = "Signup"
        emailTextField.delegate = self
        passwordTextField.delegate = self
        usernameTextField.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func signupSubmitBtn(_ sender: Any) {
        //check TextFields and save to the User
        //after click will dismiss the view
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

//Extension for UITextField and methods
extension SignupViewController: UITextFieldDelegate {

    /*Perform actions when the return key is pressed*/
         func textFieldShouldReturn(_ textField: UITextField) -> Bool {
              if textField == emailTextField {
                  //change cursor from username to password textfield
                 // self.userName = textField.text ?? "no username"
                  self.view.endEditing(true)
                  passwordTextField.becomeFirstResponder()
               
              }else if textField == passwordTextField {
                
                 self.view.endEditing(true)
                 usernameTextField.becomeFirstResponder()
              }else if textField == usernameTextField {
              
                self.view.endEditing(true)
              }
              return true
           }
       
       //MARK: - UITextFieldDelegate  methods
       /*   func textFieldShouldBeginEditing(_ textField : UITextField) -> Bool{
           
              //print("TextField did begin editing method called")
              return true
          }*/
      /* func textFieldDidEndEditing(_ textField: UITextField) {
            //print("TextField didEND editing method called")
           
       }*/
}

   

