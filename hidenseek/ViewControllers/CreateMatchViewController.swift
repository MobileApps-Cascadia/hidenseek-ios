//
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
        self.navigationItem.rightBarButtonItem =  UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelMatch))
                 self.navigationItem.title = "Create Match"

        countTimePickerView.delegate = self
        SearchTimePickerView.delegate = self
        createMatchTypePicker()
        createToolBar()
    }
    @IBOutlet weak var countTimePickerView: UIPickerView!
    
    @IBOutlet weak var SearchTimePickerView: UIPickerView!
    
    @IBOutlet weak var MatchTypeTextField: UITextField!
    let type = ["HideNSeek","Sandbox"]
    let countTime = ["Min", "Sec"]
    let searchTime = ["Hour", "Min"]
    
    
    
    var hour: Int = 0
    var minutes: Int = 0
    var seconds: Int = 0
    var matchType: String?
    
   //creating a pickerView for the matchtypetextfield
    func createMatchTypePicker(){
        let typePicker = UIPickerView()
        typePicker.delegate = self
        //set the popup view
        MatchTypeTextField.inputView = typePicker
    }
//creating a toolbar for the createMatchtypPicker
    func createToolBar(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self,  action: #selector(CreateMatchViewController.dismissKeyboard))
        toolbar.setItems([doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        //making the uIpickerview has an accessory and that is the toolbar
        MatchTypeTextField.inputAccessoryView = toolbar
    }
    
    //after editing or selection dismiss the UIPickerView
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
  //Precondition: The User clicks the canel icon
  //Postcondtion: Will present the user with an alert
  @objc func cancelMatch() {
    
    
    }
}

//Extension for the UIPicker delegate and Datasource with the function for them
extension CreateMatchViewController: UIPickerViewDelegate, UIPickerViewDataSource {


         func numberOfComponents(in pickerView: UIPickerView) -> Int {
            if pickerView == countTimePickerView || pickerView == SearchTimePickerView{
                return 2
            }
            return 1
        }

         func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if pickerView == countTimePickerView{
              return 60
              
            }else if pickerView == SearchTimePickerView {
                switch component {
                case 0:
                    return 25
                case 1://, 2:
                    return 60
                default:
                    return 0
                }
            }
               return type.count
         }

         func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
             if pickerView == countTimePickerView || pickerView == SearchTimePickerView {
             return pickerView.frame.size.width/2
            }
              return pickerView.frame.size.width
         }

         func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
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
            return type[row]
         }
    
         func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if pickerView == countTimePickerView {
            switch component {
            case 0:
                  minutes = row
            case 1:
                seconds  = row
            // case 2:
             //    seconds = row
            default:
                break;
             }
            } else if pickerView == SearchTimePickerView {
                switch component {
                case 0:
                    hour = row
                case 1:
                    minutes = row
                default:
                    break;
            }
            }else{
            matchType = type[row]
            MatchTypeTextField.text = matchType
         }
     }
}
