//
//  ViewController.swift
//  MiraclePill
//
//  Created by Chris Olson on 7/6/17.
//  Copyright © 2017 Chris Olson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate { // These are the protocalls

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alabama", "Kentucky", "Maine", "New-York", "Detroit"] // Array of states that can be selected
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self // Initializes the UIPickerViewDataSource
        statePicker.delegate = self  // Initializes the UIPickerViewDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) { // When the state button is pressed, the state picker is shown
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { // This shows just one column for out states
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // This will determine how many rows to host our states based on the length of the states array
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // This will set the title for each row in the picker equal to the states in our array
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal) // When a state is picked, this replaces the select state button with the state name
        statePicker.isHidden = true // after the state is selected this will hide the state picker
    }
}

