//
//  ViewController.swift
//  MiraclePills
//
//  Created by stefano gardano on 17/05/17.
//  Copyright © 2017 stefano gardano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let states = ["Piemonte","Lombardia","Veneto","Liguria","Sardegna"]
    

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnAction(_ sender: Any) {
         statePicker.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerTextField.text = states[row]
        statePicker.isHidden = true
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
}

