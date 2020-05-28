//
//  BeginMatchDetailViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/27/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class BeginMatchDetailViewController: UIViewController {

    @IBOutlet weak var matchNameLabel: UILabel!
    
    @IBOutlet weak var matchPasswordLabel: UILabel!
    
    @IBOutlet weak var matchTypeLabel: UILabel!
    
    @IBOutlet weak var countTimeLabel: UILabel!
    
    @IBOutlet weak var SearchTimeLabel: UILabel!
    
    @IBAction func beginMatchButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Starting the Match", message: "The Match Will Begin and the Count Time Timer will start",         preferredStyle: UIAlertController.Style.alert)

                 alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: { _ in
                     //Cancel Action
                    self.dismiss(animated: true, completion: nil)
                 }))
                /* alert.addAction(UIAlertAction(title: "",
                                               style: UIAlertAction.Style.destructive,
                                               handler: {(_: UIAlertAction!) in
                                                 //delete match and go back to MatchesTableview
                                                  self.dismiss(animated: true, completion: nil)
                 }))*/
                 self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
