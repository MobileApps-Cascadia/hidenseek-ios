//
//  MatchesTableViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 4/28/20.
//  Copyright © 2020 none. All rights reserved.
//
//"matchesTableViewCell"

import UIKit

class MatchesTableViewController: UITableViewController, UINavigationControllerDelegate {
    
    //Arrays for testing
    var titles = ["MatchName1", "MatchName2", "MatchName3","MatchName4"]
   // let dates = ["5/05/20", "4/04/20","1/01/20" ,"11/02/19"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
      //self.navigationItem.rightBarButtonItem =  UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createMatch))
        
          self.navigationItem.title = "Matches"
    }

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toCreateMatchSegue"{
            let vc = segue.destination as! CreateMatchViewController
            vc.createdMatchDelegate =  self
        }
    }
    //Purpose: To show the user to the create Matches screen
    //Precondition: The User clicks the icon
    //Postcondtion: Will present the user with the create Match screen
    @objc func createMatch() {
   
            
    }
    
    // MARK: - Table view data source

  /*  override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.titles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "matchesTableViewCell", for: indexPath) as! MatchesTableViewCell
        // Configure the cell
        //this is the outlet for the matchNameButton 
        cell.matchNameButton.setTitle(self.titles[indexPath.row], for: .normal)
       // cell.matchDateCreatedLabel.text = self.dates[indexPath.row]
        //set the color of the title to yellow
       // cell.matchNameButton.setTitleColor(UIColor(red:0.949, green:0.722, blue:0.027, alpha:1.0), for: .normal)

        return cell
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MatchesTableViewController: CreatedMatchDelegate{
    func didCreateMatch(matchName: String, matchPassword: String, matchType: String, countTime: String, seekTime: String) {
        
        titles.append(matchName)
        tableView.reloadData()
       // print("Match name is: \(matchName)")
        
    }
}

