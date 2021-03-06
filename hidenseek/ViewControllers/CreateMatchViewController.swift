//This class will allow the user to create a new match by filling in the fields and selecting the desired time using the UIPickeViews. This class will have TextFields for the matchName and matchPassword This class will have two UIPickerViews for the countTime and SearchTime.The countTime pickerView will have minutes and seconds fields and the SearchTime pickerView will have hours and minutes fields. The user will be able to click on the cancel button in the Navigation bar and an alert will popup or click on the create Match button to create the match.This class will customize the label of each row for the pickerViews and store the value the user selected in the pickerView.

//  CreateMatchViewController.swift
//  hidenseek
//
//  Created by juanita aguilar on 5/6/20.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class CreateMatchViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        countTimePickerView.delegate = self
        SearchTimePickerView.delegate = self
        MatchTypePicker()
        createToolBar()
    }
    @IBOutlet weak var countTimePickerView: UIPickerView!
    
    @IBOutlet weak var SearchTimePickerView: UIPickerView!
    
    @IBOutlet weak var MatchTypeTextField: UITextField!
    
    
    //arrays for the MatchTypePickerView,countTime and searchTime pickerviews
    let type = ["", "HideNSeek"]
    let countTime = ["Min","Sec"]
    let searchTime = ["Hrs","Min"]
    
    var hour: Int = 0
    var minutes: Int = 0
    var seconds: Int = 0
    var matchType: String?
   
    
    //Purpose: To create a match
    //Precondition: The user click the button for the create match
    //Postcondition: A match with the fields filled in will be used to create a Match
    @IBAction func createMatch(_ sender: Any) {
        //To Do
        //Check for empty fields
        //if empty fields alert
        //save the fields to prepare for segue to the MatchesTableView
          self.dismiss(animated: true, completion: nil)
    }

    //Purpose: To create a pickerView for the MatchTypeTextField
    //Precondition: None
    //Postcondtion: A pickerView for the matchtypetextfield will be created for the user to select the matchType
    func MatchTypePicker(){
        let typePicker = UIPickerView()
        typePicker.delegate = self
        //sets the popup view of the textField to a UIPickerView
        MatchTypeTextField.inputView = typePicker
        typePicker.backgroundColor = .black
        typePicker.tintColor = UIColor(red:0.949, green:0.537, blue:0.027, alpha:1.0)
       
    }

    //Purpose: To create a toolbar for the createMatchTypePicker
    //Precondition: The user clicks on the MatchTypeTextField
    //Postcondtion: a toolbar for the createMatchTypePicker with a done button that will dismiss the picker when the user clicks on it
    func createToolBar(){
        let toolbar = UIToolbar()
        //fits to the screen
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self,  action: #selector(CreateMatchViewController.dismissKeyboard))
        //sets an array of items on the toolbar
        toolbar.setItems([doneButton], animated: false)
        //set to true to make it clickable
        toolbar.isUserInteractionEnabled = true
        //making the UIPickerview has an accessory view and that is the toolbar
        MatchTypeTextField.inputAccessoryView = toolbar
        //customizations for toolbar
        toolbar.barTintColor = .black
        //color of buttons for this app
        toolbar.tintColor = UIColor(red:0.949, green:0.722, blue:0.027, alpha:1.0)
    }
    
    
    //Purpose: To dismiss the UIPickerView
    //Precondition: The user clicks the done icon
    //Postcondtion: Will dismiss the UIPickerView after editing or selection
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Purpose: To show the user an alert if they want to cancel
     //Precondition: The user clicks the cancelMatch button icon
     //Postcondtion: Will present the user with an alert to cancel match or just dissmiss the alert
    @IBAction func cancelMatchButton(_ sender: Any) {
        
        //To Do
           //if the fields are empty and the user clicks on the cancel to just go back to the Matches tableview, if not and some of the fields are filled and the user clicks on the cancel button, show the alert.
           let alert = UIAlertController(title: "Cancel Match?", message: "Canceling will Delete this Match",         preferredStyle: UIAlertController.Style.alert)

           alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: { _ in
               //Cancel Action
           }))
           alert.addAction(UIAlertAction(title: "Delete Match",
                                         style: UIAlertAction.Style.destructive,
                                         handler: {(_: UIAlertAction!) in
                                           //delete match and go back to MatchesTableview
                                            self.dismiss(animated: true, completion: nil)
           }))
           self.present(alert, animated: true, completion: nil)
           }
    }
    

//Extension for the UIPicker delegate and Datasource with the function for them
extension CreateMatchViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    //Purpose: To set the number of columns for the pickerViews
    //Precondition: The delegates for the pickerViews are set
    //Postcondtion: Will set the number of columns for the CountTime and SearchTime pickerViews else return one for the Matchtime pickerView
    //@param UIPickerView @return the number of columns for the pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == countTimePickerView || pickerView == SearchTimePickerView{
            return 2
        }
            return 1
    }
    
    //Purpose: To set the number of rows each column of the PickerView has
    //Precondition: The delegates for the pickerViews are set
    //Postcondtion: The number of rows for each of the columns will be set
    //@param UIPickerView, numberOfRowsInComponent, @return the number of rows each column has
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == countTimePickerView{
            return 60
              
        }else if pickerView == SearchTimePickerView {
            switch component {
            case 0:
                return 25
            case 1:
                return 60
            default:
                return 0
            }
        }
              //will return the number of rows equal to the number of matchtype array elements
               return type.count
    }
    
    //Purpose: To set the width of the pickerView
    //Precondition: The delegates for the pickerViews are set
    //Postcondtion: the width of each pickerView will be set
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if pickerView == countTimePickerView || pickerView == SearchTimePickerView {
            return pickerView.frame.size.width/CGFloat(countTime.count)
        }
              return pickerView.frame.size.width
    }
    
    //Purpose: To get the value the user selected in the pickerView and store it
    //Precondition: The user has selected the row of the column
    //Postcondtion: The value of the selected row will be stored
    //@param UIPickerView, didSelectRow, inComponent
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == countTimePickerView {
            switch component {
            case 0:
                  minutes = row
            case 1:
                seconds  = row
            default:
                break;
            }
        }else if pickerView == SearchTimePickerView {
            switch component {
            case 0:
                hour = row
            case 1:
                minutes = row
            default:
                break;
            }
        }else{
            //The value of the selected row of the MatchTypePicker will be shown in the MatchTypeTextField
            matchType = type[row]
            MatchTypeTextField.text = matchType
        }
     }
    
    //Purpose: To customize the label of each row for the picker views
     //Precondition:
     //Postcondtion: The value of the label of each row of each component will be set
     //@param UIPickerView, viewForRow, forComponent, reusing, @return UIView
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label: UILabel
        if let view = view as? UILabel{
            label = view
        }else{
            label = UILabel()
        }
        
        label.textColor = UIColor(red:0.949, green:0.537, blue:0.027, alpha:1.0)
        label.textAlignment = .center
      
        if pickerView == countTimePickerView {
           if row == 0{
             if component == 0{
                 label.text = "\(row) \(countTime[0])"
            }
            if component == 1{
                label.text = "\(row) \(countTime[1])"
            }
            }else{
            label.text = "\(row)"
           }
            
        }else if pickerView == SearchTimePickerView {
            if row == 0{
              if component == 0{
                  label.text = "\(row) \(searchTime[0])"
             }
             if component == 1{
                 label.text = "\(row) \(searchTime[1])"
             }
             }else{
             label.text = "\(row)"
            }
            
        }else{

            label.text = type[row]
        }
     
        return label
        
    }
    
    //Did not need the titleForRow function because wrote a customization for the viewForRow for how the picker rows look
    //Purpose: To set the title for each row of the columns for each pickerView
      //Precondition: The delegates for the pickerViews are set
      //Postcondtion: Sets the title of the row for that column
      //@param UIPickerView, titleForRow, component, @return the String title for the row
    /*  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          if pickerView == countTimePickerView {
              switch component {
               case 0:
                   return "\(row) Min"
               case 1:
                   return "\(row) Sec"
               default:
                   return ""
               }
          }else if pickerView == SearchTimePickerView {
              switch component {
              case 0:
                  return "\(row) Hour"
              case 1:
                  return "\(row) Min"
              default:
                  return ""
              }
          }
          //The title will be set to the string of the type array at that position in the array equal to the row
          return type[row]
          
      }*/
}
