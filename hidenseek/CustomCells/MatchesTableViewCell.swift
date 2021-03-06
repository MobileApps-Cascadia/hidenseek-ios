//This class will be the custom cell class that will populate the MatchesTableView

//  MatchesTableViewCell.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/14/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class MatchesTableViewCell: UITableViewCell {

    @IBAction func matchNameButton(_ sender: Any) {
               
    }
    
    
    
    @IBOutlet weak var matchDateCreatedLabel: UILabel!
    //The button is an action and a outlet to have the matchName changed in the matchesTableView
    @IBOutlet weak var matchNameButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor(red:0.251, green:0.325, blue:0.349, alpha:1.0)
        //setMatchButtonTextColor(button: matchNameButton)
       //setMatchLabelUI(label: matchDateCreatedLabel)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Purpose: to set the UI for the matchNameLabel
    //Precondtions: None
    //Postconditions: The matchNameLabel will have a tintcolor and text color set
    func setMatchButtonTextColor(button: UIButton){
        //button.tintColor = UIColor(red:0.949, green:0.537, blue:0.027, alpha:1.0)
        button.tintColor = UIColor(red:0.949, green:0.537, blue:0.027, alpha:1.0)
    }


}
