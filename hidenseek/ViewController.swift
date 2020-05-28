//
//  ViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 4/10/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var signupButton: UIButton!
 
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
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
}


   
