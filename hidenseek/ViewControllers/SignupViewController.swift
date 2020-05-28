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


