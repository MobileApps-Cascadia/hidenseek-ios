//This class will be the custom cell for the JoinMatcheTableView. The cell will have a label that represents the available match
//  JoinMatchTableViewCell.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/14/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

//Delegate for the availableMatchesTableView to get the indexPath of the cell
protocol JoinCellDelegate: class {
    func didClickMatchNameButton(for cell: JoinMatchTableViewCell)
}
class JoinMatchTableViewCell: UITableViewCell {
    
    weak var delegate: JoinCellDelegate?
        //have an instance of an IndexPath to get the IndexPath.row of the Match Model in the matchModel array in the Matches tableView
     var indexPath: IndexPath?
    
    @IBOutlet weak var matchNameButton: UIButton!
        //gets the index path of the cell when the button is clicked
    @IBAction func matchNameButton(_ sender: Any) {
        let currentCell = self
               delegate?.didClickMatchNameButton(for: currentCell) //<-Pass some info about the cell
             // print("From custom Cell Index path is: \(indexPath)")
        
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
