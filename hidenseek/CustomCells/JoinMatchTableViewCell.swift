//This class will be the custom cell for the JoinMatcheTableView. The cell will have a label that represents the available match
//  JoinMatchTableViewCell.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/14/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class JoinMatchTableViewCell: UITableViewCell {
    
    @IBAction func matchNameButton(_ sender: Any) {
        
        
    }
    

    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       self.backgroundColor = UIColor(red:0.251, green:0.325, blue:0.349, alpha:1.0)
      // setMatchLabelUI()
   
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Purpose: to set the UI for the matchNameLabel
    //Precondtions: None
    //Postconditions: The matchNameLabel will have a tintcolor and text color set
    /*func setMatchLabelUI(){
        matchNameLabel.tintColor = UIColor(red:0.949, green:0.537, blue:0.027, alpha:1.0)
        matchNameLabel.textColor = UIColor(red:0.949, green:0.537, blue:0.027, alpha:1.0)
    }*/

}
