//This class will hold a tableView that is a list of all of the available Matches the user can join. This class will make use of a custom cell.
//  JoinMatchesTableViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/14/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class JoinMatchesTableViewController: UITableViewController {
    //Array for testing
    var row: Int?
    var availableMatchModels = [Constants.MATCHTESTMODEL1, Constants.MATCHTESTMODEL2]
    
    var matchRepository: MatchTestModelRepository?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
       // self.navigationItem.rightBarButtonItem =  UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editMatch))
              
                self.navigationItem.title = "Available Matches"
        
   
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
     //   getAvaliableMatches(allMatchesArray:self.matchRepository!.getAllMatchTestModels() )
    }

    //Purpose:
    //Precondtion: The
    //Postcondition
    @objc func editMatch(){
        
    }
    
    
    // MARK: - Table view data source
//Commented out for this
   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return self.availableMatchModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "joinMatchTableViewCell", for: indexPath) as! JoinMatchTableViewCell

        // Configure the cell...
        cell.matchNameButton.setTitle(self.availableMatchModels[indexPath.row].name, for: .normal)
        //Set indexPath of the cell
        cell.indexPath = indexPath
        cell.delegate = self
       
        return cell
    }

    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //pass input to the MatchDetail screen
               if segue.identifier == "toJoinMatchDetailVCSegue"{
                   let vc = segue.destination as! JoinMatchDetailViewController
                   //Set the variables for the Match
                   //pass the testMatchModel to the MatchDetails controller to send over the data for the match
                   //print("From segue The self.row is:  \(self.row)")
          
                   vc.testMatchModel = availableMatchModels[self.row!]
                 
               }
    }
    
    func getAvaliableMatches(allMatchesArray: [MatchTestModel]?) {
       
        
        if let matches = allMatchesArray{
         for match in matches {
            //would need to check each match to see if it is available
            self.availableMatchModels.append(match)
                print("Count is : \(self.availableMatchModels.count)")
         }
        }else{
               print("Array is NIL! Count is : \(self.availableMatchModels.count)")
        }
       
    }

}

extension JoinMatchesTableViewController: JoinCellDelegate{
 
    //the function for the cell to get the indexPath and set the self.row to it
    func didClickMatchNameButton(for cell: JoinMatchTableViewCell){
        self.row = cell.indexPath?.row
          // print("MatchNameButton tapped!")
           //print("cell's indexPath=\(cell.indexPath!)")
       }
}
