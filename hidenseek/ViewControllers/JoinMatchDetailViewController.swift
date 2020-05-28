//
//  JoinMatchDetailViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/27/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class JoinMatchDetailViewController: UIViewController {

    @IBOutlet weak var matchNameLabel: UILabel!
    
    @IBOutlet weak var matchPasswordLabel: UILabel!
    
    @IBOutlet weak var matchTypeLabel: UILabel!
    
    @IBOutlet weak var counttimeLabel: UILabel!
    
    @IBOutlet weak var searchTimeLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func joinMatchButton(_ sender: Any) {
        let alert = UIAlertController(title: "Joining the Match", message: "The Match Will Begin and the Count Time Timer will start",         preferredStyle: UIAlertController.Style.alert)

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
    
    @IBAction func cancelMatchButton(_ sender: Any) {
        let alert = UIAlertController(title: "Cancel Join?", message: "Do you really want to cancel joining this match?",         preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Cancel Match",
                                      style: UIAlertAction.Style.destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //delete match and go back to MatchesTableview
                                         self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
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
