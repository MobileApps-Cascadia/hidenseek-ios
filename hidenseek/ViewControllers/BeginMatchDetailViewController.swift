//
//  BeginMatchDetailViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/27/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class BeginMatchDetailViewController: UIViewController {
    
    var testMatchModel = MatchTestModel(name: "", matchPassword: "", matchType: "", countTime: "", seekTime: "")

    @IBOutlet weak var matchNameLabel: UILabel!
    
    @IBOutlet weak var matchPasswordLabel: UILabel!
    
    @IBOutlet weak var matchTypeLabel: UILabel!
    
    @IBOutlet weak var countTimeLabel: UILabel!
    
    @IBOutlet weak var SearchTimeLabel: UILabel!
    //set the alert to begin the match
    //set the delegate to pass the new match to the availableMatchesTableView
    @IBAction func beginMatchButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Begin Match", message: "The match will begin and the count time will start",         preferredStyle: UIAlertController.Style.alert)

                 alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
                     //Cancel Action
                    self.dismiss(animated: true, completion: nil)
                 }))
               
                 self.present(alert, animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        matchNameLabel.text = testMatchModel.name
        matchPasswordLabel.text = testMatchModel.matchPassword
        matchTypeLabel.text = testMatchModel.matchType
        countTimeLabel.text = testMatchModel.countTime
        SearchTimeLabel.text = testMatchModel.seekTime
        
    }
    
    @IBAction func cancelMatchButton(_ sender: Any) {
        let alert = UIAlertController(title: "Cancel Match?", message: "Do you really want to cancel this match?",         preferredStyle: UIAlertController.Style.alert)

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
