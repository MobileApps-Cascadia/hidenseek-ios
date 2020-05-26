//
//  HostJoinMatchViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/18/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class HostJoinMatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
     override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //hide the navigation bar 
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated:true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
