//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Илья Дернов on 31.10.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: String?
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmi
        let bmiInt = NSString(string: bmi ?? "0").floatValue
        if bmiInt <= 18.5 {
            statusLabel.text = "Underweight"
        } else if bmiInt <= 24.9 {
            statusLabel.text = "Normal"
        } else {
            statusLabel.text = "OverWeight"
        }
        
    }
    @IBAction func Recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
